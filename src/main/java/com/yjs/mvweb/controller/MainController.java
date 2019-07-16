package com.yjs.mvweb.controller;

import com.yjs.mvweb.pojo.Mv;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.enterprise.inject.Model;
import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
@RequestMapping("/")
public class MainController {
    @RequestMapping("/index")
    public String main(){
        return "/test";
    }

}
