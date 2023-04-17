package com.yuri.getcode.dao;

import com.yuri.getcode.dto.QuestionDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class QuestionDao {

    @Autowired
    private SqlSession sqlSession;
    private static final String namespace = "com.yuri.getcode.questionMapper";

    public int create(QuestionDto questionDto) {
        return sqlSession.insert(namespace + ".create",questionDto);
    }

    public int update(QuestionDto questionDto) {
        return sqlSession.update(namespace + ".update",questionDto);
    }

    public QuestionDto findbyid(Long id) {
        return sqlSession.selectOne(namespace + ".findbyid",id);
    }

    public List<QuestionDto> selectall() {
        return sqlSession.selectList(namespace + ".selectall");
    }

    public int delete(Long id) {
        return sqlSession.delete(namespace + ".delete",id);
    }

    public int updateview(Long id) {
        return sqlSession.update(namespace + ".updateview",id);
    }
}
