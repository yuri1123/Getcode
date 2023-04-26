package com.yuri.getcode.dao;

import com.yuri.getcode.dto.BoardDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardDao {

    @Autowired
    private SqlSession sqlSession;
    private static final String namespace = "com.yuri.getcode.questionMapper";

    public int create(BoardDto boardDto) {
        return sqlSession.insert(namespace + ".create",boardDto);
    }

    public int update(BoardDto boardDto) {
        return sqlSession.update(namespace + ".update",boardDto);
    }

    public BoardDto findbyid(Long id) {
        return sqlSession.selectOne(namespace + ".findbyid",id);
    }

    public List<BoardDto> selectall() {
        return sqlSession.selectList(namespace + ".selectall");
    }

    public int delete(Long id) {
        return sqlSession.delete(namespace + ".delete",id);
    }

    public int updateview(Long id) {
        return sqlSession.update(namespace + ".updateview",id);
    }
}
