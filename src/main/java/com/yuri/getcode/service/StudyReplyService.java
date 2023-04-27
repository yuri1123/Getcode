package com.yuri.getcode.service;

import com.yuri.getcode.dao.StudyReplyDao;
import com.yuri.getcode.dto.StudyReplyDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudyReplyService {

    @Autowired
    private StudyReplyDao studyReplyDao;


    public int createstudyreply(StudyReplyDto studyReplyDto) {
        return studyReplyDao.createstudyreply(studyReplyDto);
    }

    public int updatestudyreply(StudyReplyDto studyReplyDto) {
        return studyReplyDao.updatestudyreply(studyReplyDto);
    }

    public List<StudyReplyDto> selectallbystudyid(Long studyid) {
        return studyReplyDao.selectallbystudyid(studyid);
    }

    public int deletestudyreply(Long id) {
        return studyReplyDao.deletestudyreply(id);
    }

}
