package com.yuri.getcode.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

import java.util.Date;

@Getter@Setter@ToString
public class Study extends BaseEntity{

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

}