package com.yuri.getcode.service;

import com.yuri.getcode.dto.QuestionDto;
import com.yuri.getcode.dto.UserDto;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface QuestionService {

    int create(QuestionDto questionDto);
    int update(QuestionDto questionDto);
    QuestionDto findbyid(Long id);
    List<QuestionDto> selectall();
    int delete(Long id);
    int updateview(Long id);
}
