package com.yuri.getcode.controller;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.yuri.getcode.dto.BoardDto;
import com.yuri.getcode.dto.BoardReplyDto;
import com.yuri.getcode.dto.StudyDto;
import com.yuri.getcode.dto.UserDto;
import com.yuri.getcode.entity.Board;
import com.yuri.getcode.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.beans.PropertyEditorSupport;
import java.security.Principal;
import java.util.*;

@Controller
public class AdminController {

    @Autowired
    private StudyService studyService;
    @Autowired
    private MyStudyService myStudyService;
    @Autowired
    private UserService userService;
    @Autowired
    private BoardService boardService;
    @Autowired
    private BoardReplyService boardReplyService;

    //관리자 메인페이지 이동
    @GetMapping("admin")
    String adminhome(Model model) {
        //조회수 높은 스터디 데이터 전달
        List<StudyDto> studyDtoList = studyService.selecttopview();
        model.addAttribute("studyDto", studyDtoList);

        //최근에 신청한 4개의 스터디 상태 변경 데이터 전달
        List<StudyDto> studyapplyDto = studyService.selectfour();
        model.addAttribute("studyapplyDto", studyapplyDto);

        //포지션별 스터디 수 데이터 전달 JSON 타입
        List<Map<String, Object>> positionchart = studyService.countStudyByPosition();
        model.addAttribute("positionchart", positionchart);
        System.out.println(positionchart);
        Gson gson = new Gson();
        List<String> positions = new ArrayList<>();
        List<Integer> studyCounts = new ArrayList<>();
        for (Map<String, Object> map : positionchart) {
            String position = (String) map.get("position");
            Long studyCountLong = (Long) map.get("studycount");
            Integer studyCount = studyCountLong.intValue();
            studyCounts.add(studyCount);
            positions.add(position);
        }
        String positionsJson = gson.toJson(positions);
        String studyCountsJson = gson.toJson(studyCounts);
        model.addAttribute("positions", positionsJson);
        model.addAttribute("studyCounts", studyCountsJson);

        //전체 스터디 수 데이터 전달
        int totalstudycount = studyService.totalstudycount();
        model.addAttribute("totalcount", totalstudycount);
        //전체 유저수 수 데이터 전달
        int totalusercount = userService.totalusercount();
        model.addAttribute("totalusercount", totalusercount);

        //월별 스터디수 데이터 전달 JSON 타입
        List<Map<String, Object>> countstudybymonth = studyService.countstudybymonth();
        model.addAttribute("countstudybymonth", countstudybymonth);
        System.out.println(countstudybymonth);
        List<Integer> studycount = new ArrayList<>();
        List<String> studyregDate = new ArrayList<>();
        for (Map<String, Object> map : countstudybymonth) {
            Long counts = (Long) map.get("count");
            Integer countint = counts.intValue();
            String regDates = (String) map.get("regDate");
            studycount.add(countint);
            studyregDate.add(regDates);
        }
        String countsJson = gson.toJson(studycount);
        String regDatesJson = gson.toJson(studyregDate);
        model.addAttribute("count", countsJson);
        model.addAttribute("regDate", regDatesJson);
        System.out.println(countsJson);
        System.out.println(regDatesJson);

        //월별 회원수 데이터 전달 JSON 타입
        List<Map<String, Object>> countuserbymonth = userService.countuserbymonth();
        model.addAttribute("countuserbymonth", countuserbymonth);
        System.out.println(countuserbymonth);
        List<Integer> usercount = new ArrayList<>();
        List<String> userregDate = new ArrayList<>();
        for (Map<String, Object> map : countuserbymonth) {
            Long counts = (Long) map.get("count");
            Integer countint2 = counts.intValue();
            String regDates = (String) map.get("regDate");
            usercount.add(countint2);
            userregDate.add(regDates);
        }
        String usercountsJson = gson.toJson(usercount);
        String userregDatesJson = gson.toJson(userregDate);
        model.addAttribute("usercount", usercountsJson);
        model.addAttribute("userregDate", userregDatesJson);
        System.out.println(usercountsJson);
        System.out.println(userregDatesJson);
        return "admin/adminhome";
    }

    //관리자 스터디 전체 보기
    @GetMapping("admin/studylist")
    String adminstudylist(Model model) {
        List<StudyDto> studyDto = studyService.selectall();
        model.addAttribute("studyDto", studyDto);

        return "admin/studylist";
    }

    //관리자 스터디 삭제하기
    @DeleteMapping("admin/study/delete/{id}")
    public @ResponseBody ResponseEntity deleteStudy(
            @PathVariable("id") Long id) {

        //스터디 삭제
        int result = studyService.deletestudy(id);
        return new ResponseEntity<Long>(id, HttpStatus.OK);
    }


    //관리자 신청현황 페이지 이동
    @GetMapping("admin/applystudy")
    String applystudy(Model model) {
        List<StudyDto> studyDtoList = studyService.selectall();
        model.addAttribute("studyDtoList", studyDtoList);
        return "admin/applystudy";
    }

    //신청상태 변경
    @PostMapping("admin/applystudy/updatestate")
    ResponseEntity<String> changestate(@RequestParam("id") Long id, @RequestParam("state") String state) {

        Map<String, Object> params = new HashMap<>();
        params.put("id", id);
        params.put("state", state);

        try {
            studyService.updatestate(params);
            return ResponseEntity.ok("success");
        } catch (Exception e) {
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).body(e.getMessage());
        }
    }

    //유저 전체보기
    @GetMapping("admin/userlist")
    String userlist(Model model) {
        List<UserDto> userDto = userService.selectall();
        model.addAttribute("userDto", userDto);
        return "admin/userlist";
    }

    //관리자 유저 삭제하기
    @DeleteMapping("admin/user/delete/{id}")
    public @ResponseBody ResponseEntity deleteUser(
            @PathVariable("id") Long id, Model model) {
        //마이스터디 삭제
        int result1 = myStudyService.deletemystudy(id);
        //유저 삭제
        int result = userService.deleteuser(id);
        if (result > 0 && result1 > 0) {
            model.addAttribute("msg", "해당 회원이 삭제되었습니다.");
        }
        return new ResponseEntity<Long>(id, HttpStatus.OK);
    }

    //유저 권한 수정하기 페이지 이동
    @GetMapping("admin/changerole")
    String changerole(Model model) {
        List<UserDto> userDto = userService.selectall();
        model.addAttribute("userDto", userDto);
        return "admin/changerole";
    }

    //유저 권한 수정하기
    @PutMapping(value = "/admin/userrole/modify")
    public @ResponseBody ResponseEntity updateUserRole(@RequestParam("id") Long id, @RequestParam("role") String role) {
        Map<String, Object> params = new HashMap<>();
        params.put("id", id);
        params.put("role", role);
        int result = userService.updaterole(params);

        if (result > 0) {
            return new ResponseEntity<>(HttpStatus.OK);
        } else {
            return new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    //커뮤니티
    //공지사항 전체보기
    @GetMapping("/admin/noticelist")
    public String adminNoticeList(Model model) {
        List<BoardDto> boardDtos = boardService.selectnotice();
        model.addAttribute("boardDtos", boardDtos);
        return "admin/noticelist";
    }

    //공지사항 등록 페이지 이동
    @GetMapping("admin/notice/register")
    public String adminNoticeRegister(Model model) {
        model.addAttribute("state", "등록");
        return "admin/noticeregister";
    }

    //공지사항 등록하기
    @PostMapping("admin/notice/register")
    String createNotice(BoardDto boardDto) {
        boardDto.setType("NOTICE");
        int result = boardService.create(boardDto);
        System.out.println(result);
        return "redirect:/admin/noticelist";
    }


    //공지사항 수정 페이지 이동
    @GetMapping("admin/notice/modify/{id}")
    public String adminNoticeModify(@PathVariable("id") Long id, Model model) {
        BoardDto boardDto = boardService.findbyid(id);
        model.addAttribute("boardDto", boardDto);
        model.addAttribute("state", "수정");
        return "admin/noticeregister";
    }

    // 공지사항 수정하기
    @PostMapping("admin/notice/modify/{id}")
    String updateNotice(@PathVariable("id") Long id, Model model, BoardDto boardDto) {
        int result = boardService.updateboard(boardDto);
        if (result > 1) {
            model.addAttribute("msg", "업데이트가 완료되었습니다.");
        }
        return "redirect:/admin/noticelist";
    }


    //Q&A 전체보기
    @GetMapping("admin/qnalist")
    public String adminQnaList(Model model) {
        List<BoardDto> boardDtos = boardService.selectqna();
        model.addAttribute("boardDtos", boardDtos);
        return "admin/qnalist";
    }

    //qna 상세보기
    @GetMapping("admin/qnadetail/{id}")
    public String adminQnaDetail(@PathVariable("id") Long id, Model model) {
        boardService.updateview(id);
        BoardDto qna = boardService.findbyid(id);
        model.addAttribute("qna", qna);
        List<BoardReplyDto> boardReplyDtos = boardReplyService.selectallbyboardid(id);
        model.addAttribute("boardReplyDtos", boardReplyDtos);
        return "admin/qnadetail";
    }

    //qna 답글 달기
    @PostMapping("admin/createreply/{id}")
    String createqnareply(@PathVariable("id") Long id, BoardReplyDto boardReplyDto, Model model,
                          HttpServletRequest request) {


        boardReplyDto.setBoardid(id);
        int result = boardReplyService.createboardreply(boardReplyDto);
        if (result > 1) {
            model.addAttribute("msg", "댓글 작성이 완료되었습니다.");
        }

        //타입에 따라 다른 페이지로 이동할 수 있게 함
        BoardDto boardDto = boardService.findbyid(id);
        String type = boardDto.getType();

        return "redirect:/admin/qnadetail/{id}";
    }

}

