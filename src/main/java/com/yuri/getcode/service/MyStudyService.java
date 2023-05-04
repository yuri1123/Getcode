package com.yuri.getcode.service;

import com.yuri.getcode.dao.MystudyDao;
import com.yuri.getcode.dto.MyStudyDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MyStudyService {

    @Autowired
    private MystudyDao mystudyDao;

    public int createmystudy(MyStudyDto myStudyDto) {
        return mystudyDao.createmystudy(myStudyDto);
    }

    public MyStudyDto findbyuserid(Long userid){
        return mystudyDao.findbyuserid(userid);
    }

    public int deletemystudy(Long userid){return mystudyDao.deletemystudy(userid);}
}
