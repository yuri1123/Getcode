package com.yuri.getcode.dao;

import com.yuri.getcode.dto.QuestionDto;
import com.yuri.getcode.dto.StudyDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class StudyDao {

    @Autowired
    private SqlSession sqlSession;
    private static final String namespace = "com.yuri.getcode.studyMapper";

    public int create(StudyDto studyDto) {
        return sqlSession.insert(namespace + ".create",studyDto);
    }

    public int update(StudyDto studyDto) {
        return sqlSession.update(namespace + ".update",studyDto);
    }
    public int updatestate(StudyDto studyDto) {
        return sqlSession.update(namespace + ".updatestate",studyDto);
    }

    public StudyDto findbyid(Long id) {
        return sqlSession.selectOne(namespace + ".findbyid",id);
    }

    public List<StudyDto> selectall() {
        return sqlSession.selectList(namespace + ".selectall");
    }

    public int delete(Long id) {
        return sqlSession.delete(namespace + ".delete",id);
    }

    public int updateview(Long id) {
        return sqlSession.update(namespace + ".updateview",id);
    }


}
