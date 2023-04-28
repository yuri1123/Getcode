package com.yuri.getcode.service;

import com.yuri.getcode.dao.MystudyDao;
import com.yuri.getcode.dao.MystudyitemsDao;
import com.yuri.getcode.dto.MyStudyDto;
import com.yuri.getcode.dto.MyStudyItemsDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class MyStudyItemsService {

    @Autowired
    private MystudyitemsDao mystudyitemsDao;


    public int createmystudyitems(MyStudyItemsDto myStudyItemsDto) {
        return mystudyitemsDao.createmystudyitem(myStudyItemsDto);
    }

    public MyStudyItemsDto findbymystudynums(Map<String, Object> params){
        return mystudyitemsDao.findbymystudynums(params);
    }
    public List<MyStudyItemsDto> findbymystudyid(Long mystudyid){
        return mystudyitemsDao.findbymystudyid(mystudyid);
    }
    public List<MyStudyItemsDto> findbystudyid(Long studyid){
        return mystudyitemsDao.findbystudyid(studyid);
    }
}
