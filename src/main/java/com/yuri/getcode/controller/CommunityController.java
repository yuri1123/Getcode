package com.yuri.getcode.controller;

import com.yuri.getcode.dto.*;
import com.yuri.getcode.service.BoardService;
import com.yuri.getcode.service.MyStudyItemsService;
import com.yuri.getcode.service.MyStudyService;
import com.yuri.getcode.service.StudyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

@Controller
public class CommunityController {

    @Autowired
    private BoardService boardService;

    @Autowired
    private MyStudyItemsService myStudyItemsService;
    @Autowired
    private MyStudyService myStudyService;
    @Autowired
    private StudyService studyService;

    //   Notice 게시판 이동 후 리스트 출력
    @GetMapping("community/noticelist")
    String noticelist(BoardDto boardDto, Model model, HttpServletRequest request) {
        List<BoardDto> noticelist = boardService.selectnotice();
        System.out.println(noticelist);
        model.addAttribute("noticelist", noticelist);
        return "/community/noticelist";
    }

    //Notice 상세보기 페이지 이동
    @GetMapping("community/noticedetail/{id}")
    String noticedetail(@PathVariable("id") Long id, BoardDto boardDto, Model model) {
        boardService.updateview(id);
        BoardDto notice = boardService.findbyid(id);
        model.addAttribute("notice", notice);
        return "/community/noticedetail";
    }


    //   QnA 게시판 이동 후 리스트 출력
    @GetMapping("community/qnalist")
    String qnalist(BoardDto boardDto, Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        UserDto userDto = (UserDto) session.getAttribute("User");

        if (userDto == null) {
            model.addAttribute("errormessage", "로그인이 필요합니다. 로그인 페이지로 이동합니다.");
            return "redirect:/user/login";
        } else {
            List<BoardDto> questionDtoList = boardService.selectqna();
            model.addAttribute("questionDtoList", questionDtoList);
        }
        return "/community/qnalist";
    }


    //    Q&A등록 페이지 이동
    @GetMapping("community/createquestion")
    String createquestion(Model model) {
        model.addAttribute("state", "등록");
        return "/community/createquestion";
    }

    //    Q&A등록하기
    @PostMapping("community/createquestion")
    String createquestionDo(BoardDto boardDto) {
        boardDto.setType("QNA");
        int result = boardService.create(boardDto);
        System.out.println(result);
        return "redirect:/community/qnalist";
    }

    //    Q&A 수정 페이지 이동(등록폼과 동일)
    @GetMapping("community/updatequestion/{id}")
    String updatequestion(@PathVariable("id") Long id, Model model) {
        BoardDto boardDto = boardService.findbyid(id);
        System.out.println("수정페이지 보낼거 " + boardDto);
        model.addAttribute("boardDto", boardDto);
        model.addAttribute("state", "수정");
        return "community/createquestion";
    }

    //    Q&A 수정하기
    @PostMapping("community/updatequestion/{id}")
    String updatequestiondo(@PathVariable("id") Long id, Model model, BoardDto boardDto) {
        int result = boardService.updateboard(boardDto);
        if (result > 1) {
            model.addAttribute("msg", "업데이트가 완료되었습니다.");
        }
        return "redirect:/community/reviewdetail/{id}";
    }


    //QNA 상세보기 페이지 이동
    @GetMapping("community/qnadetail/{id}")
    String qnadetail(@PathVariable("id") Long id, BoardDto boardDto, Model model) {
        boardService.updateview(id);
        BoardDto qna = boardService.findbyid(id);
        model.addAttribute("qna", qna);
        return "/community/qnadetail";
    }


    //   Review 게시판 이동 후 리스트 출력
    @GetMapping("community/reviewlist")
    String reviewlist(BoardDto boardDto, Model model, HttpServletRequest request) {
        HttpSession session = request.getSession();
        UserDto userDto = (UserDto) session.getAttribute("User");

        if (userDto == null) {
            model.addAttribute("errormessage", "로그인이 필요합니다. 로그인 페이지로 이동합니다.");
            return "redirect:/user/login";
        } else {
            List<BoardDto> reviewlist = boardService.selectreview();
            model.addAttribute("reviewlist", reviewlist);
        }
        return "/community/reviewlist";
    }

    //Review 상세보기 페이지 이동
    @GetMapping("community/reviewdetail/{id}")
    String reviewdetail(@PathVariable("id") Long id, BoardDto boardDto, Model model) {
        boardService.updateview(id);
        BoardDto review = boardService.findbyid(id);
        model.addAttribute("review", review);
        return "/community/reviewdetail";
    }

    //리뷰 등록 페이지 이동
    @GetMapping("community/createreview")
    String createreview(Model model, StudyDto studyDto, HttpServletRequest request) {
        //마이스터디 아이디로 내가 참여한 적이 있거나 현재 참여중인 스터디를 조회해서 모델에 전달
        HttpSession session = request.getSession();
        UserDto userDto = (UserDto) session.getAttribute("User");
        MyStudyDto myStudyDto = myStudyService.findbyuserid(userDto.getId());
        List<MyStudyItemsDto> myStudyItemsDto = myStudyItemsService.findbymystudyid(myStudyDto.getMystudyid());
        List<String> studynamelist = new ArrayList<>();
        for (int i = 0; i < myStudyItemsDto.size(); i++) {
            String studyname = studyService.findstudynamebyid(myStudyItemsDto.get(i).getStudyid());
            studynamelist.add(studyname);
        }

        //두개의 리스트를 하나의 리스트로 통합해서 모델로 전달
        Map<String, MyStudyItemsDto> mergedMap = new LinkedHashMap<>();
        for (int i = 0; i < myStudyItemsDto.size() && i < studynamelist.size(); i++) {
            String key = studynamelist.get(i);
            MyStudyItemsDto value = myStudyItemsDto.get(i);
            mergedMap.put(key, value);
        }

        model.addAttribute("mergedMap", mergedMap);
        model.addAttribute("state", "등록");
        return "/community/createreview";
    }

    //리뷰 등록하기
    @PostMapping("community/createreview")
    String createreviewdo(BoardDto boardDto) {
        boardDto.setType("REVIEW");
        boardDto.setStudyname(studyService.findstudynamebyid(boardDto.getStudyid()));
        int result = boardService.create(boardDto);
        System.out.println(result);
        return "redirect:/community/reviewlist";
    }

    //    리뷰 수정 페이지 이동(등록폼과 동일)
    @GetMapping("community/updatereview/{id}")
    String updatereview(@PathVariable("id") Long id, Model model, StudyDto studyDto, HttpServletRequest request) {
        BoardDto boardDto = boardService.findbyid(id);
        model.addAttribute("boardDto", boardDto);
        model.addAttribute("state", "수정");

        //마이스터디 아이디로 내가 참여한 적이 있거나 현재 참여중인 스터디를 조회해서 모델에 전달
        HttpSession session = request.getSession();
        UserDto userDto = (UserDto) session.getAttribute("User");
        MyStudyDto myStudyDto = myStudyService.findbyuserid(userDto.getId());
        List<MyStudyItemsDto> myStudyItemsDto = myStudyItemsService.findbymystudyid(myStudyDto.getMystudyid());
        List<String> studynamelist = new ArrayList<>();
        for (int i = 0; i < myStudyItemsDto.size(); i++) {
            String studyname = studyService.findstudynamebyid(myStudyItemsDto.get(i).getStudyid());
            studynamelist.add(studyname);
        }

        //두개의 리스트를 하나의 리스트로 통합해서 모델로 전달
        Map<String, MyStudyItemsDto> mergedMap = new LinkedHashMap<>();
        for (int i = 0; i < myStudyItemsDto.size() && i < studynamelist.size(); i++) {
            String key = studynamelist.get(i);
            MyStudyItemsDto value = myStudyItemsDto.get(i);
            mergedMap.put(key, value);
        }

        model.addAttribute("mergedMap", mergedMap);
        return "community/createreview";
    }

    //    Q&A 수정하기
    @PostMapping("community/updatereview/{id}")
    String updatereviewdo(@PathVariable("id") Long id, Model model, BoardDto boardDto) {
        boardDto.setStudyname(studyService.findstudynamebyid(boardDto.getStudyid()));
        int result = boardService.updateboard(boardDto);
        if (result > 1) {
            model.addAttribute("msg", "업데이트가 완료되었습니다.");
        }
        return "redirect:/community/reviewdetail/{id}";
    }

    //    게시글 삭제하기
    @PostMapping("community/deleteboard/{id}")
    String deleteboard(@PathVariable("id") Long id,Model model) {
            int r = boardService.delete(id);
            if(r>1){
                model.addAttribute("msg","삭제가 완료되었습니다");
            }

        return "redirect:/";
    }

}
