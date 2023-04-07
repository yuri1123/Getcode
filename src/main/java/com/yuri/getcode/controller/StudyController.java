package com.yuri.getcode.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class StudyController {

    //스터디 찾기 페이지 이동
    @GetMapping("study/browse")
    public String browsestudy(){
        return "study/browse";
    }

}
