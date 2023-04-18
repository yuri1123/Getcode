package com.yuri.getcode.controller;

import com.yuri.getcode.dto.StudyDto;
import com.yuri.getcode.dto.UserDto;
import com.yuri.getcode.service.StudyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class StudyController {

    @Autowired
    private StudyService studyService;
    private List<StudyDto> positionList;

    //스터디 찾기 페이지 이동
    @GetMapping("study/browse")
    public String browsestudy(Model model){

        List<StudyDto> studyDto = studyService.selectpermit();
        model.addAttribute("studyDto", studyDto);

        List<StudyDto> positionList = studyService.selectposition();
        model.addAttribute("positionList", positionList);
        List<StudyDto> skillstackList = studyService.selectskillstack();
        model.addAttribute("skillstackList", skillstackList);
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

    //스터디 상세 페이지 이동
    @GetMapping("study/studydetail/{id}")
    public String stduydetail(Model model, @PathVariable("id") Long id){
        studyService.updateview(id);
        StudyDto studyDto = studyService.findbyid(id);
        model.addAttribute("studyDto",studyDto);
        return "study/studydetail";
    }

    //스터디 수정페이지 이동
    @GetMapping("/study/studyupdate/{id}")
    public String studyupdate(@PathVariable("id") Long id, Model model){
        StudyDto studyDto = studyService.findbyid(id);
        model.addAttribute("studyDto", studyDto);
        System.out.println(studyDto);
        return "study/studyupdate";
    }

    //스터디 수정하기
    @PostMapping("/study/update/{id}")
    public String updateid(StudyDto studyDto,Model model,@PathVariable("id") Long id){
        int result = studyService.update(studyDto);
        if(result >0){
            model.addAttribute("msg","스터디를 생성하였습니다.");
        }
        // 수정된 데이터 다시 불러오기
        StudyDto updatedStudyDto = studyService.findbyid(id);
        model.addAttribute("studyDto", updatedStudyDto);

        return "redirect:/user/mymadestudy";
    }
}
