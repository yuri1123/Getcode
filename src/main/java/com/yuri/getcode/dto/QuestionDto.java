package com.yuri.getcode.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class QuestionDto {

    private Long id;
    private String subject;
    private String content;
    private int viewcnt;
    private String regDate;
    private String modifyDate;
    private String createdBy;
    private String modifiedBy;

}
