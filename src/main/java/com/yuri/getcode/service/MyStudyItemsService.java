package com.yuri.getcode.service;

import com.yuri.getcode.dao.MystudyDao;
import com.yuri.getcode.dao.MystudyitemsDao;
import com.yuri.getcode.dto.MyStudyDto;
import com.yuri.getcode.dto.MyStudyItemsDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyStudyItemsService {

    @Autowired
    private MystudyitemsDao mystudyitemsDao;


    public int createmystudyitems(MyStudyItemsDto myStudyItemsDto) {
        return mystudyitemsDao.createmystudyitem(myStudyItemsDto);
    }
}
