package com.yuri.getcode.dao;

import com.yuri.getcode.dto.QuestionDto;
import com.yuri.getcode.dto.UserDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class QuestionDaoImpl implements QuestionDao {

    @Autowired
    private SqlSession sqlSession;
    private static final String namespace = "com.yuri.getcode.questionMapper";

    @Override
    public int create(QuestionDto questionDto) {
        return sqlSession.insert(namespace + ".create",questionDto);
    }

    @Override
    public int update(QuestionDto questionDto) {
        return sqlSession.update(namespace + ".update",questionDto);
    }

    @Override
    public QuestionDto findbyid(Long id) {
        return sqlSession.selectOne(namespace + ".findbyid",id);
    }

    @Override
    public List<QuestionDto> selectall() {
        return sqlSession.selectList(namespace + ".selectall");
    }

    @Override
    public int delete(Long id) {
        return sqlSession.delete(namespace + ".delete",id);
    }
}
