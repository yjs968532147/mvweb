package com.yjs.mvweb.service;

import com.yjs.mvweb.pojo.Mv;

public interface MvService {
    void insertMv(Mv mv);
    Mv getResourceById(int uploadid);
}
