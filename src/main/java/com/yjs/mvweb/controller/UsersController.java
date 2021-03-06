package com.yjs.mvweb.controller;


import com.yjs.mvweb.pojo.IUsers;
import com.yjs.mvweb.service.IUsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.servlet.http.HttpSession;

/**
 * @Author: Administrator
 * @Date: Created in 11:29 2019/1/17
 * @ClassName UsersController
 **/
@Controller
@RequestMapping("/user")
@SessionAttributes("user")
public class UsersController {

    @Autowired
    private IUsersService usersService;
    @RequestMapping("/login")
    public String login(){
        return "/login";
    }
    @RequestMapping("/checklogin")
    public String login(IUsers users, Model model){
        String msg="";
        //根据登入账号判断该用户是否存在
        IUsers user = usersService.selectUserByLoginName(users.getUsername());
        if(user==null){
            msg="该用户不存在！";
        }else{
            if(user.getPassword().equals(users.getPassword())){
                //验证成功进入主界面
                model.addAttribute("user",user);
                return "/index";
            }else{
                msg="密码错误！";
            }
        }
        model.addAttribute("msg",msg);
        return "/login";
    }
    @RequestMapping("/anotherpage")
    public String hrefpage(){

        return "/anotherpage";
    }
    @RequestMapping("/register")
    public String register(IUsers users, Model model){
        String msg2="";
        //根据登入账号判断该用户是否存在
        IUsers user = usersService.selectUserByLoginName(users.getUsername());
        if(user!=null){
            msg2="该用户已存在！";
        }else{
            usersService.insertUser(users);
            return "/index";
        }
        model.addAttribute("msg2",msg2);
        return "/login";
    }
    @RequestMapping("/outLogin")
    public String outLogin(HttpSession session){
        //通过session.invalidata()方法来注销当前的session
        session.invalidate();
        return "/login";
    }
}
