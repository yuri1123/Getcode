package com.yuri.getcode.service;

import com.yuri.getcode.dao.QuestionDao;
import com.yuri.getcode.dto.QuestionDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionService {

    @Autowired
    private QuestionDao questionDao;


    public int create(QuestionDto questionDto) {
        return questionDao.create(questionDto);
    }

    public int update(QuestionDto questionDto) {
        return questionDao.update(questionDto);
    }

    public QuestionDto findbyid(Long id) {
        return questionDao.findbyid(id);
    }

    public List<QuestionDto> selectall() {
        return questionDao.selectall();
    }

    public int delete(Long id) {
        return questionDao.delete(id);
    }

    public int updateview(Long id) {
        return questionDao.updateview(id);
    }
}
