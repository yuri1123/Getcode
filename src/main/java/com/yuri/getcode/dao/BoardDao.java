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
    private static final String namespace = "com.yuri.getcode.boardMapper";

    public int create(BoardDto boardDto) {
        return sqlSession.insert(namespace + ".createboard", boardDto);
    }

    public int updateboard(BoardDto boardDto) {
        return sqlSession.update(namespace + ".updateboard", boardDto);
    }

    public BoardDto findbyid(Long id) {
        return sqlSession.selectOne(namespace + ".findbyid", id);
    }

    public List<BoardDto> selectall() {
        return sqlSession.selectList(namespace + ".selectall");
    }

    public int delete(Long id) {
        return sqlSession.delete(namespace + ".delete", id);
    }

    public int updateview(Long id) {
        return sqlSession.update(namespace + ".updateview", id);
    }

    //    notice 전체 조회
    public List<BoardDto> selectnotice() {
        return sqlSession.selectList(namespace + ".selectnotice");
    }
    //    qna 전체 조회
    public List<BoardDto> selectqna() {
        return sqlSession.selectList(namespace + ".selectqna");
    }
    //    review 전체 조회
    public List<BoardDto> selectreview() {
        return sqlSession.selectList(namespace + ".selectreview");
    }

    //내가쓴 게시글 전체 조회
    public List<BoardDto> findbycreatedby(String createdBy) {
        return sqlSession.selectList(namespace + ".findbycreatedby",createdBy);
    }

}
