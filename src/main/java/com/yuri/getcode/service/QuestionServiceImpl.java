package com.yuri.getcode.service;

import com.yuri.getcode.dao.QuestionDao;
import com.yuri.getcode.dao.UserDao;
import com.yuri.getcode.dto.QuestionDto;
import com.yuri.getcode.dto.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionServiceImpl implements QuestionService{

    @Autowired
    private QuestionDao questionDao;


    @Override
    public int create(QuestionDto questionDto) {
        return questionDao.create(questionDto);
    }

    @Override
    public int update(QuestionDto questionDto) {
        return questionDao.update(questionDto);
    }

    @Override
    public QuestionDto findbyid(Long id) {
        return questionDao.findbyid(id);
    }

    @Override
    public List<QuestionDto> selectall() {
        return questionDao.selectall();
    }

    @Override
    public int delete(Long id) {
        return questionDao.delete(id);
    }
}
