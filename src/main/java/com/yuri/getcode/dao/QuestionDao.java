package com.yuri.getcode.dao;

import com.yuri.getcode.dto.QuestionDto;
import com.yuri.getcode.dto.UserDto;

import java.util.List;

public interface QuestionDao {

    int create(QuestionDto questionDto);
    int update(QuestionDto questionDto);
    QuestionDto findbyid(Long id);
    List<QuestionDto> selectall();
    int delete(Long id);
    int updateview(Long id);


}
