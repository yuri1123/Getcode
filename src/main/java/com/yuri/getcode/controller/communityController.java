package com.yuri.getcode.controller;

import com.yuri.getcode.dto.QuestionDto;
import com.yuri.getcode.service.QuestionService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpSession;

@Controller
public class communityController {

    @Autowired
    private QuestionService questionService;


//   QnA 게시판 이동
    @GetMapping("community/qnalist")
    String qnalist(){
        return "community/qnalist";
    }


//    질문등록 페이지 이동
    @GetMapping("community/createquestion")
    String createquestion(){
        return "community/createquestion";
    }

    //    질문등록하기
    @PostMapping("community/createquestion")
    String createquestionDo(QuestionDto questionDto){
        questionService.create(questionDto);
        return "redirect:/community/qnalist";
    }

}
