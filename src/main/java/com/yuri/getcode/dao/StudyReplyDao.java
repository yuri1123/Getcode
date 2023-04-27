package com.yuri.getcode.dao;

import com.yuri.getcode.dto.StudyReplyDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class StudyReplyDao {

    @Autowired
    private SqlSession sqlSession;
    private static final String namespace = "com.yuri.getcode.studyreplyMapper";

    public int createstudyreply(StudyReplyDto studyReplyDto) {
        return sqlSession.insert(namespace + ".createstudyreply", studyReplyDto);
    }

    public int updatestudyreply(StudyReplyDto studyReplyDto) {
        return sqlSession.update(namespace + ".updatestudyreply", studyReplyDto);
    }

    public List<StudyReplyDto> selectallbystudyid(Long studyid) {
        return sqlSession.selectList(namespace + ".selectallbystudyid",studyid);
    }

    public int deletestudyreply(Long id) {
        return sqlSession.delete(namespace + ".deletestudyreply", id);
    }


}
