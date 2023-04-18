package com.yuri.getcode.controller;

import com.yuri.getcode.dto.UserDto;
import com.yuri.getcode.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;
    //로그인페이지 이동
    @GetMapping("user/login")
    String loginform(){
        return "/user/login";
    }
    //로그인
    @PostMapping("/user/login")
    String login(UserDto userDto, HttpSession session,
                 HttpServletRequest request, Model model) throws UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");
            UserDto userDto1 = userService.login(userDto);
        if(userDto1 != null){
            session.setAttribute("User", userDto1);
            model.addAttribute("msg", "로그인되었습니다.");
        } else {
            System.out.println("로그인 중에 오류가 발생하였습니다.");
            return "redirect:/user/login";
        }

            return "redirect:/";
    }

    //회원가입 페이지 이동
    @GetMapping("user/signup")
    String signupform(){
        return "user/signup";
    }

    //회원가입
    @PostMapping("/user/signup")
    String signup(UserDto userDto, HttpServletRequest request, Model model) throws UnsupportedEncodingException {

        request.setCharacterEncoding("UTF-8");
        int r = userService.signup(userDto);
        if(r>0) {
            model.addAttribute("msg", "회원가입을 완료하였습니다");
        }
        return "/user/login";
    }
    //로그아웃
    @GetMapping("user/logout")
    String logout(HttpSession session){
        session.invalidate();
        return "redirect:/";
    }


    //마이페이지 이동
    @GetMapping("user/mypage/{id}")
    public String mypage(@PathVariable("id") Long id, Model model){

        List<UserDto> userDto = userService.selectinfo(id);
        System.out.println(userDto);
        model.addAttribute("userDto",userDto);
        return "user/mypage";
    }

    //마이페이지 이동
    @GetMapping("user/myinfo/{id}")
    public String myinfo(@PathVariable("id") Long id, Model model){
        List<UserDto> userDto = userService.selectinfo(id);
        model.addAttribute("userDto",userDto);
        return "user/myinfo";
    }

}
