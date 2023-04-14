package com.yuri.getcode.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

    //관리자 메인페이지 이동
    @GetMapping("admin")
    String adminhome(){
        return "admin/adminhome";
    }

    //관리자 신청현황 페이지 이동
    @GetMapping("admin/applystudy")
    String applystudy(){
        return "admin/applystudy";
    }
}
