package com.yuri.getcode.service;

import com.yuri.getcode.dao.StudyDao;
import com.yuri.getcode.dto.StudyDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

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
    public int updatestate(Map<String, Object> params){
        return studyDao.updatestate(params);
    }

    public StudyDto findbyid(Long id) {
        return studyDao.findbyid(id);
    }

    //스터디 생성자로 조회하기
    public List<StudyDto> findbyme(String createdBy){return studyDao.selectbyme(createdBy);}
    public List<StudyDto> selectall() {
        return studyDao.selectall();
    }
    public List<StudyDto> selectfour() {
        return studyDao.selectfour();
    }
    public List<StudyDto> selectpermit() {
        return studyDao.selectpermit();
    }
    public List<StudyDto> selectskillstack() {
        return studyDao.selectskillstack();
    }
    public List<StudyDto> selectposition() {
        return studyDao.selectposition();
    }
    public int delete(Long id) {
        return studyDao.delete(id);
    }

    public int updateview(Long id) {
        return studyDao.updateview(id);
    }
    public List<StudyDto> selecttopview(){return studyDao.selecttopview();}


}
