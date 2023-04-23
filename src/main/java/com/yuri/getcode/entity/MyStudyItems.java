package com.yuri.getcode.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter@Setter@ToString
public class MyStudyItems extends BaseEntity{

    private Long id;
    private MyStudy myStudy;
    private Study study;

}