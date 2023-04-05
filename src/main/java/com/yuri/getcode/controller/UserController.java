package com.yuri.getcode.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class UserController {

    @GetMapping("user/login")
    String loginform(){
        return "user/login";
    }

    @GetMapping("user/signup")
    String signupform(){
        return "user/signup";
    }

}
