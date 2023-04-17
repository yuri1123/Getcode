package com.yuri.getcode.dao;

import com.yuri.getcode.dto.StudyDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

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
    public int updatestate(Map<String, Object> params) {
        return sqlSession.update(namespace + ".updatestate",params);
    }

    public StudyDto findbyid(Long id) {
        return sqlSession.selectOne(namespace + ".findbyid",id);
    }

    public List<StudyDto> selectall() {
        return sqlSession.selectList(namespace + ".selectall");
    }
    public List<StudyDto> selectpermit() {
        return sqlSession.selectList(namespace + ".selectpermit");
    }
    public List<StudyDto> selectposition() {
        return sqlSession.selectList(namespace + ".selectposition");
    }
    public List<StudyDto> selectskillstack() {
        return sqlSession.selectList(namespace + ".selectskillstack");
    }
    public int delete(Long id) {
        return sqlSession.delete(namespace + ".delete",id);
    }

    public int updateview(Long id) {
        return sqlSession.update(namespace + ".updateview",id);
    }


}