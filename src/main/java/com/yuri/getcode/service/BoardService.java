package com.yuri.getcode.service;

import com.yuri.getcode.dao.BoardDao;
import com.yuri.getcode.dto.BoardDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BoardService {

    @Autowired
    private BoardDao boardDao;


    public int create(BoardDto questionDto) {
        return boardDao.create(questionDto);
    }

    public int update(BoardDto questionDto) {
        return boardDao.update(questionDto);
    }

    public BoardDto findbyid(Long id) {
        return boardDao.findbyid(id);
    }

    public List<BoardDto> selectall() {
        return boardDao.selectall();
    }

    public int delete(Long id) {
        return boardDao.delete(id);
    }

    public int updateview(Long id) {
        return boardDao.updateview(id);
    }
}
