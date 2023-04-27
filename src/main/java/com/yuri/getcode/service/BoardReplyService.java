package com.yuri.getcode.service;

import com.yuri.getcode.dao.BoardDao;
import com.yuri.getcode.dao.BoardReplyDao;
import com.yuri.getcode.dto.BoardDto;
import com.yuri.getcode.dto.BoardReplyDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardReplyService {

    @Autowired
    private BoardReplyDao boardReplyDao;


    public int createboardreply(BoardReplyDto boardReplyDto) {
        return boardReplyDao.createboardreply(boardReplyDto);
    }

    public int updateboardreply(BoardReplyDto boardReplyDto) {
        return boardReplyDao.updateboardreply(boardReplyDto);
    }

    public List<BoardReplyDto> selectallbyboardid(Long boardid) {
        return boardReplyDao.selectallbyboardid(boardid);
    }

    public int deleteboardreply(Long id) {
        return boardReplyDao.deleteboardreply(id);
    }

}
