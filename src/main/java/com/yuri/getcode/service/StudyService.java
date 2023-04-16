package com.yuri.getcode.service;

import com.yuri.getcode.dao.StudyDao;
import com.yuri.getcode.dto.QuestionDto;
import com.yuri.getcode.dto.StudyDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudyService{

    @Autowired
    private StudyDao studyDao;


    public int create(StudyDto studyDto) {
        return studyDao.create(studyDto);
    }

    public int update(StudyDto studyDto) {
        return studyDao.update(studyDto);
    }
    public int updatestate(StudyDto studyDto){
        return studyDao.updatestate(studyDto);
    }

    public StudyDto findbyid(Long id) {
        return studyDao.findbyid(id);
    }

    public List<StudyDto> selectall() {
        return studyDao.selectall();
    }

    public int delete(Long id) {
        return studyDao.delete(id);
    }

    public int updateview(Long id) {
        return studyDao.updateview(id);
    }
}
