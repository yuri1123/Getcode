package com.yuri.getcode.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

    @GetMapping("admin")
    String adminhome(){
        return "admin/adminhome";
    }
}
