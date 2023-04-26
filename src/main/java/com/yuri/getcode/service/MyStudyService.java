package com.yuri.getcode.service;

import com.yuri.getcode.dao.MystudyDao;
import com.yuri.getcode.dao.QuestionDao;
import com.yuri.getcode.dto.MyStudyDto;
import com.yuri.getcode.dto.QuestionDto;
import com.yuri.getcode.dto.UserDto;
import com.yuri.getcode.entity.MyStudy;
import com.yuri.getcode.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

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
}
