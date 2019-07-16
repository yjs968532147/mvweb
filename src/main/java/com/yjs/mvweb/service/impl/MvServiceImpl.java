package com.yjs.mvweb.service.impl;

import com.yjs.mvweb.mapper.MvMapper;
import com.yjs.mvweb.pojo.Mv;
import com.yjs.mvweb.service.MvService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class MvServiceImpl implements MvService {
    @Autowired
    private MvMapper mvMapper;
    public void insertMv(Mv mv) {
        mvMapper.insertMv(mv);
    }
    public Mv getResourceById(int uploadid){
        return mvMapper.getResourceById(uploadid);
    }
}
