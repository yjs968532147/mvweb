package com.yjs.mvweb.mapper;


import com.yjs.mvweb.pojo.Mv;
import org.springframework.stereotype.Repository;

@Repository
public interface MvMapper {
    void insertMv(Mv mv);
    Mv getResourceById(int uploadid);
}
