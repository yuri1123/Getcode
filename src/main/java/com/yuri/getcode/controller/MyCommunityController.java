package com.yuri.getcode.controller;

import com.yuri.getcode.service.MyStudyService;
import com.yuri.getcode.service.StudyService;
import com.yuri.getcode.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class MyCommunityController {


//    mycommunity/mystudymain/${study.id}


    @Autowired
    private StudyService studyService;
    @Autowired
    private MyStudyService myStudyService;
    @Autowired
    private UserService userService;


    @GetMapping("mycommunity/mystudymain/{id}")
    public String myCommunitymain(@PathVariable("id") Long id) {
        return "/mystudycommunity/mystudymain";
    }

    @GetMapping("mycommunity/repeat")
    public String myCommunityrepeat() {
        return "/mystudycommunity/repeat";
    }

    @GetMapping("mycommunity/chat")
    public String myCommunitychat() {
        return "/mystudycommunity/chat";
    }
}
