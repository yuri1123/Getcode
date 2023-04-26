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


//   QnA 게시판 이동 후 리스트 출력
    @GetMapping("community/qnalist")
    String qnalist(BoardDto questionDto, Model model, HttpServletRequest request){
        HttpSession session = request.getSession();
        UserDto userDto = (UserDto) session.getAttribute("User");
        System.out.println(userDto);

        if(userDto == null) {
            model.addAttribute("errormessage","로그인이 필요합니다. 로그인 페이지로 이동합니다.");
            return "redirect:/user/login";
        } else {
            List<BoardDto> questionDtoList = boardService.selectall();
            model.addAttribute("questionDtoList", questionDtoList);
        }
        return "/community/qnalist";
    }


//    질문등록 페이지 이동
    @GetMapping("community/createquestion")
    String createquestion(){
        return "/community/createquestion";
    }

    //    질문등록하기
    @PostMapping("community/createquestion")
    String createquestionDo(BoardDto questionDto){
        boardService.create(questionDto);
        return "redirect:/community/qnalist";
    }

    //질문 상세보기 페이지 이동
    @GetMapping("community/qnadetail/{id}")
    String qnadetail(@PathVariable("id") Long id){
        boardService.updateview(id);
        return "/community/qnadetail";
    }

}
