package com.yuri.getcode.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class StudyReplyDto {

    private Long id;
    private Long studyidr;
    private String content;
    private String regDate;
    private String modifyDate;
    private String createdBy;
    private String modifiedBy;

}
