package com.yuri.getcode.controller;

import com.yuri.getcode.dto.BoardDto;
import com.yuri.getcode.dto.UserDto;
import com.yuri.getcode.service.BoardService;
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
public class CommunityController {

    @Autowired
    private BoardService boardService;


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
    String noticedetail(@PathVariable("id") Long id, BoardDto boardDto,Model model) {
        boardService.updateview(id);
        BoardDto notice = boardService.findnoticebyid(id);
        model.addAttribute("notice",notice);
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
    String createquestion() {
        return "/community/createquestion";
    }

    //    Q&A등록하기
    @PostMapping("community/createquestion")
    String createquestionDo(BoardDto boardDto) {
        System.out.println(boardDto);
        System.out.println("야호야호야호!!!");
        boardDto.setType("QNA");
        int result = boardService.create(boardDto);
        System.out.println(result);
        return "redirect:/community/qnalist";
    }

    //QNA 상세보기 페이지 이동
    @GetMapping("community/qnadetail/{id}")
    String qnadetail(@PathVariable("id") Long id, BoardDto boardDto,Model model) {
        boardService.updateview(id);
        BoardDto qna = boardService.findqnabyid(id);
        model.addAttribute("qna",qna);
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
    String reviewdetail(@PathVariable("id") Long id,BoardDto boardDto,Model model) {
        boardService.updateview(id);
        BoardDto review = boardService.findreviewbyid(id);
        model.addAttribute("review",review);
        return "/community/reviewdetail";
    }

}
