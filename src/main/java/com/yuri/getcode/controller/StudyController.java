package com.yuri.getcode.controller;

import com.yuri.getcode.dto.*;
import com.yuri.getcode.entity.MyStudy;
import com.yuri.getcode.entity.MyStudyItems;
import com.yuri.getcode.entity.User;
import com.yuri.getcode.service.MyStudyItemsService;
import com.yuri.getcode.service.MyStudyService;
import com.yuri.getcode.service.StudyReplyService;
import com.yuri.getcode.service.StudyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
public class StudyController {

    @Autowired
    private StudyService studyService;
    @Autowired
    private StudyReplyService studyReplyService;
    @Autowired
    private MyStudyService myStudyService;
    @Autowired
    private MyStudyItemsService myStudyItemsService;

    //스터디 찾기 페이지 이동
    @GetMapping("study/browse")
    public String browsestudy(Model model) {

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
    public String createstudy(HttpServletRequest request, Model model) {

        HttpSession session = request.getSession();
        UserDto userDto = (UserDto) session.getAttribute("User");

        if (userDto == null) {
            model.addAttribute("errormessage", "로그인이 필요합니다. 로그인 페이지로 이동합니다.");
            return "redirect:/user/login";
        }
        return "/study/createstudy";
    }

    //스터디만들기
    @PostMapping("/study/create")
    public String createstudyDo(StudyDto studyDto, Model model) {
        int result = studyService.create(studyDto);

        if (result > 0) {
            model.addAttribute("msg", "스터디를 생성하였습니다.");
        }
        return "redirect:/study/browse";
    }

    //스터디 상세 페이지 이동
    @GetMapping("study/studydetail/{id}")
    public String stduydetail(Model model, @PathVariable("id") Long id, HttpServletRequest request) {
        studyService.updateview(id);

        HttpSession session = request.getSession();
        UserDto userDto = (UserDto) session.getAttribute("User");

        if (userDto == null) {
            model.addAttribute("errormessage", "로그인이 필요합니다. 로그인 페이지로 이동합니다.");
            return "redirect:/user/login";
        }

        StudyDto studyDto = studyService.findbyid(id);
        model.addAttribute("studyDto", studyDto);
        List<StudyReplyDto> studyReplyDtos = studyReplyService.selectallbystudyid(id);
        model.addAttribute("studyReplyDtos", studyReplyDtos);

        //스터디아이디로 studyitems를 조회함(해당 아이템을 가지고있는 사람들 조회)
        //해당 리스트의 크기와 모집인원의 크기를 비교하여 같으면 true를 모델에 담아 뷰에 전달
        List<MyStudyItemsDto> myStudyItemsDtos = myStudyItemsService.findbystudyid(id);
        if (studyDto.getPersonnel() == myStudyItemsDtos.size()) {
            model.addAttribute("personend", "true");
        }

        //참여자들 중에 현재 로그인한 회원의 아이디와 일치하는 것이 있으면, true를 반환하고 break를 걸어서
        //다른 데이터의 조건식을 실행하지 않도록 함
        for (int i = 0; i < myStudyItemsDtos.size(); i++) {
            if (myStudyItemsDtos.get(i).getCreatedBy().equals(userDto.getUserid())) {
                boolean joined = myStudyItemsDtos.get(i).getCreatedBy().equals(userDto.getUserid());
                model.addAttribute("joined", "true");
            break;
            }
        }

        return "study/studydetail";
    }

    //스터디 수정페이지 이동
    @GetMapping("/study/studyupdate/{id}")
    public String studyupdate(@PathVariable("id") Long id, Model model) {
        StudyDto studyDto = studyService.findbyid(id);
        model.addAttribute("studyDto", studyDto);
        System.out.println(studyDto);
        return "study/studyupdate";
    }

    //스터디 수정하기
    @PostMapping("/study/update/{id}")
    public String updateid(StudyDto studyDto, Model model, @PathVariable("id") Long id) {
        int result = studyService.update(studyDto);
        if (result > 0) {
            model.addAttribute("msg", "스터디를 수정하였습니다.");
        }
        // 수정된 데이터 다시 불러오기
        StudyDto updatedStudyDto = studyService.findbyid(id);
        model.addAttribute("studyDto", updatedStudyDto);

        return "redirect:/user/mymadestudy";
    }

    //스터디 삭제하기
    @PostMapping("study/deletestudy/{id}")
    public String deletestudy(Model model, @PathVariable("id") Long id){

        int result = studyService.deletestudy(id);
        if (result > 0) {
            model.addAttribute("msg", "스터디를 삭제하였습니다.");
        }
        // 수정된 데이터 다시 불러오기
        StudyDto updatedStudyDto = studyService.findbyid(id);
        model.addAttribute("studyDto", updatedStudyDto);

        return "redirect:/user/mymadestudy";
    }

    //나의 스터디에 담기
    @PostMapping("study/studyitems")
    public String createmystudyitems(@ModelAttribute MyStudyItemsDto myStudyItemsDto, @ModelAttribute MyStudyDto myStudyDto,
                                     Model model, HttpServletRequest request) {

        //로그인하지 않았다면 로그인하세요 에러메시지 호출
        HttpSession session = request.getSession();
        UserDto userDto = (UserDto) session.getAttribute("User");
        if (userDto == null) {
            model.addAttribute("errormessage", "로그인이 필요합니다. 로그인 페이지로 이동합니다.");
            return "redirect:/user/login";
        }

        //뷰에서 전달받은 로그인한 회원의 고유번호로 마이스터디 조회
        MyStudyDto myStudy = myStudyService.findbyuserid(userDto.getId());
        System.out.print(myStudy);
        //처음으로 담을 경우 해당 회원의 마이스터디 엔티티를 생성한다.
        if (myStudy == null) {
            int result1 = myStudyService.createmystudy(myStudyDto);
        }
        model.addAttribute("mystudyid", myStudy.getMystudyid());

        //마이스터디에 동일한 스터디가 들어있는지를 확인함
        Map<String, Object> params = new HashMap<>();
        params.put("mystudyid", myStudy.getMystudyid());
        params.put("studyid", myStudyItemsDto.getStudyid());
        MyStudyItemsDto myStudyItems1 = myStudyItemsService.findbymystudynums(params);
        System.out.print(myStudyItems1);

        //동일한 스터디가 들어있지 않다면, 새로운 스터디를 담는 로직 실행
        if (myStudyItems1 == null) {
            myStudyItemsDto.setMystudyid(myStudy.getMystudyid());
            int result = myStudyItemsService.createmystudyitems(myStudyItemsDto);
            System.out.print(myStudyItemsDto);
            if (result > 0) {
                model.addAttribute("msg", "스터디에 참여하였습니다");
            }

        }
        return "redirect:/study/browse";
    }

    //댓글 달기
    @PostMapping("study/createreply/{id}")
    String createstudyreply(@PathVariable("id") Long id, StudyReplyDto studyReplyDto, Model model,
                            HttpServletRequest request) {

        HttpSession session = request.getSession();
        UserDto userDto = (UserDto) session.getAttribute("User");

        if (userDto == null) {
            model.addAttribute("msg", "로그인이 필요합니다.");
            return "redirect:/user/login";
        }

        studyReplyDto.setStudyidr(id);
        int result = studyReplyService.createstudyreply(studyReplyDto);
        if (result > 1) {
            model.addAttribute("msg", "댓글 작성이 완료되었습니다.");
        }

        return "redirect:/study/studydetail/{id}";

    }


}
