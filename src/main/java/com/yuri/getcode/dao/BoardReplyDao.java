package com.yuri.getcode.dao;

import com.yuri.getcode.dto.BoardDto;
import com.yuri.getcode.dto.BoardReplyDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class BoardReplyDao {

    @Autowired
    private SqlSession sqlSession;
    private static final String namespace = "com.yuri.getcode.boardreplyMapper";

    public int createboardreply(BoardReplyDto boardReplyDto) {
        return sqlSession.insert(namespace + ".createboardreply", boardReplyDto);
    }

    public int updateboardreply(BoardReplyDto boardReplyDto) {
        return sqlSession.update(namespace + ".updateboardreply", boardReplyDto);
    }

    public List<BoardReplyDto> selectallbyboardid(Long boardid) {
        return sqlSession.selectList(namespace + ".selectallbyboardid",boardid);
    }

    public int deleteboardreply(Long id) {
        return sqlSession.delete(namespace + ".deleteboardreply", id);
    }


}
