package com.yjs.mvweb.service.impl;

import com.yjs.mvweb.mapper.IUsersMapper;
import com.yjs.mvweb.pojo.IUsers;
import com.yjs.mvweb.service.IUsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author: Administrator
 * @Date: Created in 14:10 2019/1/17
 * @ClassName IUsersServiceImpl
 **/
@Service
@Transactional
public class UsersServiceImpl implements IUsersService {

    @Autowired
    private IUsersMapper usersMapper;

    public List<IUsers> selectAll(){
        return usersMapper.selectAll();
    }

    public boolean selectOne(IUsers users) {
        return usersMapper.selectOne(users);
    }

    public void insertUser(IUsers users) {
        usersMapper.insertUser(users);
    }

    public IUsers selectUserByLoginName(String username) {
        return usersMapper.selectUserByLoginName(username);
    }
}
