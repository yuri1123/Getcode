package com.yuri.getcode.controller;

import com.yuri.getcode.dto.StudyDto;
import com.yuri.getcode.dto.UserDto;
import com.yuri.getcode.service.StudyService;
import com.yuri.getcode.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class AdminController {

    @Autowired
    private StudyService studyService;
    @Autowired
    private UserService userService;

    //관리자 메인페이지 이동
    @GetMapping("admin")
    String adminhome(Model model){
        List<StudyDto> studyDtoList=studyService.selecttopview();
        model.addAttribute("studyDto",studyDtoList);
        List<StudyDto> studyapplyDto = studyService.selectfour();
        model.addAttribute("studyapplyDto",studyapplyDto);

        return "admin/adminhome";
    }

    //관리자 스터디 전체 보기
    @GetMapping("admin/studylist")
   String adminstudylist(Model model){
        List<StudyDto> studyDto = studyService.selectall();
        model.addAttribute("studyDto", studyDto);

        return "admin/studylist";
    }

    //관리자 신청현황 페이지 이동
    @GetMapping("admin/applystudy")
    String applystudy(Model model){
        List<StudyDto> studyDtoList = studyService.selectall();
        model.addAttribute("studyDtoList",studyDtoList);
        return "admin/applystudy";
    }

    //신청상태 변경
    @PostMapping("admin/applystudy/updatestate")
    ResponseEntity<String> changestate(@RequestParam("id") Long id, @RequestParam("state") String state){

        Map<String, Object> params = new HashMap<>();
        params.put("id", id);
        params.put("state",state);

        try {
            studyService.updatestate(params);
            return ResponseEntity.ok("success");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(e.getMessage());
        }
    }

    //유저 전체보기
    @GetMapping("admin/userlist")
    String userlist(Model model){
        List<UserDto> userDto = userService.selectall();
        model.addAttribute("userDto",userDto);
        return "admin/userlist";
    }

    //유저 권한 수정하기
    @GetMapping("admin/changerole")
    String changerole(Model model){
        List<UserDto> userDto = userService.selectall();
        model.addAttribute("userDto",userDto);
        return "admin/changerole";
    }

}
