package com.yjs.mvweb.service;

import com.yjs.mvweb.pojo.IUsers;

import java.util.List;

/**
 * @Author: Administrator
 * @Date: Created in 14:09 2019/1/17
 * @ClassName IUsersService
 **/
public interface IUsersService {
    public List<IUsers> selectAll();

    public boolean selectOne(IUsers users);

    void insertUser(IUsers users);
    IUsers selectUserByLoginName(String username);
}
