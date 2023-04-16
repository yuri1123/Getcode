package com.yuri.getcode.controller;

import com.yuri.getcode.dto.StudyDto;
import com.yuri.getcode.dto.UserDto;
import com.yuri.getcode.service.StudyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class StudyController {

    @Autowired
    private StudyService studyService;

    //스터디 찾기 페이지 이동
    @GetMapping("study/browse")
    public String browsestudy(Model model){

        List<StudyDto> studyDto = studyService.selectall();
        model.addAttribute("studyDto", studyDto);

        return "study/browse";
    }

    //스터디 만들기 페이지 이동
    @GetMapping("study/create")
    public String createstudy(HttpServletRequest request, Model model){

        HttpSession session = request.getSession();
        UserDto userDto = (UserDto) session.getAttribute("User");

        if(userDto == null) {
            model.addAttribute("errormessage","로그인이 필요합니다. 로그인 페이지로 이동합니다.");
            return "redirect:/user/login";
        }
        return "/study/createstudy";
    }


    //스터디만들기
    @PostMapping("/study/create")
    public String createstudyDo(StudyDto studyDto,Model model ){
        int result = studyService.create(studyDto);

        if(result >0){
            model.addAttribute("msg","스터디를 생성하였습니다.");
        }
        return "redirect:/study/browse";
    }


    //스터디 찾기 페이지 이동
    @GetMapping("study/mystudy")
    public String mystudy(){
        return "/study/mystudy";
    }
}
