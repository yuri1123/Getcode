package com.yuri.getcode.controller;

import com.yuri.getcode.dto.*;
import com.yuri.getcode.entity.UploadFileUtils;
import com.yuri.getcode.entity.User;
import com.yuri.getcode.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.ImportResource;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
public class UserController {

    @Autowired
    private UserService userService;
    @Autowired
    private BoardService boardService;
    @Autowired
    private StudyService studyService;
    @Autowired
    private MyStudyService myStudyService;
    @Autowired
    private MyStudyItemsService myStudyItemsService;


    //로그인페이지 이동
    @GetMapping("user/login")
    String loginform() {
        return "/user/login";
    }

    //로그인
    @PostMapping("/user/login")
    String login(UserDto userDto, HttpSession session,
                 HttpServletRequest request, Model model) throws UnsupportedEncodingException {
        request.setCharacterEncoding("UTF-8");
        UserDto userDto1 = userService.login(userDto);
        if (userDto1 != null) {
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
    String signupform() {
        return "user/signup";
    }

    //회원가입
    @PostMapping("/user/signup")
    String signup(UserDto userDto, HttpServletRequest request, Model model) throws UnsupportedEncodingException {

        request.setCharacterEncoding("UTF-8");
        int r = userService.signup(userDto);
        if (r > 0) {
            model.addAttribute("msg", "회원가입을 완료하였습니다");
        }
        return "redirect:/user/login";
    }

    //로그아웃
    @GetMapping("user/logout")
    String logout(HttpSession session) {
        session.invalidate();
        return "redirect:/";
    }


    //마이페이지 이동
    //내가 참여하고 있는 스터디 페이지(기본)
    @GetMapping("user/mypage/{id}")
    public String mypage(@PathVariable("id") Long id, Model model) {
        UserDto userDto = userService.selectinfo(id);
        model.addAttribute("userDto", userDto);

        //회원아이디로 마이스터디 고유번호를 찾아서, 마이스터디 아이디로 마이스터디 안에 들어있는 스터디들을 조회해서,
        //스터디의 기본 정보를 가져온다.
        MyStudyDto myStudyDto = myStudyService.findbyuserid(id);
        Long mystudyid = myStudyDto.getMystudyid();
        List<MyStudyItemsDto> myStudyItemsDtos = myStudyItemsService.findbymystudyid(mystudyid);
        List<StudyDto> studyDtos = new ArrayList<>();
        for (int i = 0; i < myStudyItemsDtos.size(); i++) {
            StudyDto studyDto = studyService.findbyid(myStudyItemsDtos.get(i).getStudyid());
            studyDtos.add(studyDto);
        }
        model.addAttribute("studyDtos", studyDtos);

        return "user/mypage";
    }

    //회원정보 페이지 이동
    @GetMapping("user/myinfo/{id}")
    public String myinfo(@PathVariable("id") Long id, Model model) {
        UserDto userDto = userService.selectinfo(id);
        model.addAttribute("userDto", userDto);
        return "user/myinfo";
    }

    //    @PostMapping("user/myinfo/modify/{id}")
//    public String updateinfo(@PathVariable("id") Long id, Model model, UserDto userDto,
//                             MultipartFile file) {
//
//        try {
//            // 업로드된 파일을 프로젝트 내의 resources 폴더에 저장합니다.
//            String uploadPath = System.getProperty("user.dir") + "/src/main/webapp/resources/upload/";
//            String fileName = System.currentTimeMillis() + "_" + file.getOriginalFilename();
//            String filePath = uploadPath + fileName;
//            file.transferTo(new File(filePath));
//
//            // 파일 데이터를 UserDto 객체의 avatarimage 필드에 저장합니다.
//            InputStream is = file.getInputStream();
//            byte[] bytes = is.readAllBytes();
//            userDto.setAvatarimage(bytes);
//
//            int result = userService.updateinfo(userDto);
//            if (result > 0) {
//                model.addAttribute("msg", "회원정보를 수정하였습니다.");
//            }
//
//            // 수정된 사용자 정보 다시 불러오기
//            UserDto updatedUserDto = userService.selectinfo(id);
//            model.addAttribute("userDto", updatedUserDto);
//
//            return "redirect:/";
//        } catch (Exception e) {
//            // 파일 업로드 실패시 처리할 예외 처리 로직
//            return "redirect:/"; // 파일 업로드 실패시 이동할 페이지
//        }
//    }
    @Value("${uploadPath}")
    private String uploadPath;

    @PostMapping("/user/myinfo/modify/{id}")
    public String updateUserInfo(@PathVariable("id") Long id, @ModelAttribute UserDto userDto,
                                 @RequestParam("avatarimage") MultipartFile avatarimage) throws IOException {
        System.out.println("너무너무넘 열받오" + avatarimage);
//        if(file != null && !file.isEmpty()) {
//            // 파일이 업로드된 경우
//            String fileName = file.getOriginalFilename();
//            String fileType = file.getContentType();
//
//            // 파일 저장 경로 설정
//            String uploadDir = uploadPath;
//            String filePath = uploadDir + fileName;
//
//            // 파일 저장
//            File dest = new File(filePath);
//            file.transferTo(dest);
//
//            // UserDto에 파일 정보 저장
//            userDto.setAvatarimage(filePath);
//            userDto.setAvatarImageType(fileType);
//        }
//
//        // User 정보 업데이트
//        userService.updateinfo(userDto);
        return "redirect:/user/myinfo/{id}";
    }




            //내가 만든 스터디 페이지 이동
    @GetMapping("user/mymadestudy/{userid}")
    public String mymadestudy(Model model, @PathVariable("userid") String userid) {
        UserDto userDto = userService.selectbyuserid(userid);
        model.addAttribute("userDto", userDto);
        List<StudyDto> studyDtos = studyService.findbyme(userid);
        model.addAttribute("studyDtos", studyDtos);
        return "user/mymadestudy";
    }

    // 내가 쓴 게시글 페이지 이동
    @GetMapping("user/myboard/{userid}")
    public String myboard(Model model, @PathVariable("userid") String userid) {
        UserDto userDto = userService.selectbyuserid(userid);
        model.addAttribute("userDto", userDto);
        List<BoardDto> boardDtos = boardService.findbycreatedby(userid);
        System.out.println(boardDtos);
        model.addAttribute("boardDtos", boardDtos);
        return "user/myboard";
    }
}
