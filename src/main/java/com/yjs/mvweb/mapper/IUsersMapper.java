package com.yjs.mvweb.mapper;

import com.yjs.mvweb.pojo.IUsers;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author: Administrator
 * @Date: Created in 14:12 2019/1/17
 * @ClassName IUsersMapper
 **/
@Repository
public interface IUsersMapper {

    public List<IUsers> selectAll();
    public boolean selectOne(IUsers users);
    void insertUser(IUsers users);
    IUsers selectUserByLoginName(String username);
}
