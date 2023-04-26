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


    public int create(BoardDto boardDto) {
        return boardDao.create(boardDto);
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

    public List<BoardDto> selectnotice() {
        return boardDao.selectnotice();
    }
    public List<BoardDto> selectqna() {
        return boardDao.selectqna();
    }
    public List<BoardDto> selectreview() {
        return boardDao.selectreview();
    }

    public List<BoardDto> findbycreatedby(String createdBy) {
        return boardDao.findbycreatedby(createdBy);
    }
    public BoardDto findnoticebyid(Long id) {
        return boardDao.findnoticebyid(id);
    }
    public BoardDto findreviewbyid(Long id) {
        return boardDao.findreviewbyid(id);
    }
    public BoardDto findqnabyid(Long id) {
        return boardDao.findqnabyid(id);
    }
}
