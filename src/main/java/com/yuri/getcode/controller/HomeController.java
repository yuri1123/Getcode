package com.yuri.getcode.controller;

import java.text.DateFormat;
import java.util.*;

import com.yuri.getcode.dto.MyStudyItemsDto;
import com.yuri.getcode.dto.StudyDto;
import com.yuri.getcode.entity.Study;
import com.yuri.getcode.service.MyStudyItemsService;
import com.yuri.getcode.service.StudyService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

    @Autowired
    private StudyService studyService;
    @Autowired
    private MyStudyItemsService myStudyItemsService;

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String home(Locale locale, Model model) {
        logger.info("유리짱의 신나는 겟코드 개발!", locale);

        Date date = new Date();
        DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
        String formattedDate = dateFormat.format(date);
        model.addAttribute("serverTime", formattedDate);


        List<StudyDto> studyDtos = studyService.selecttopview();
        model.addAttribute("studyDtos", studyDtos);

        // 스터디별 참여자 리스트를 담을 맵
        Map<Long, List<String>> partnerMap = new HashMap<>();

        // 각 스터디별로 참여자 리스트를 구해서 맵에 저장
        for (StudyDto studyDto : studyDtos) {
            List<MyStudyItemsDto> myStudyItemsDtos = myStudyItemsService.findbystudyid(studyDto.getId());
            List<String> partnerList = new ArrayList<>();
            for (MyStudyItemsDto myStudyItemsDto : myStudyItemsDtos) {
                partnerList.add(myStudyItemsDto.getCreatedBy());
            }
            partnerMap.put(studyDto.getId(), partnerList);
        }
        model.addAttribute("partnerMap", partnerMap);


        return "index";
    }

}
