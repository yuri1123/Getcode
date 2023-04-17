package com.yuri.getcode.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter@Setter@ToString
public class StudyDto {

    private Long id;
    private String studyname;
    private String studystart;
    private String period;
    private String recruitend;
    private int personnel;
    private String skillstack;
    private String position;
    private String connection;
    private String onoff;
    private String content;
    private String state;
    private int viewcnt;
    private String regDate;
    private String modifyDate;
    private String createdBy;
    private String modifiedBy;
    private int count; //포지션 그룹별로 했을 경우 허용된 스터디의 수
}
