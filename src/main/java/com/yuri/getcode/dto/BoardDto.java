package com.yuri.getcode.dto;

import com.yuri.getcode.constant.BoardType;
import com.yuri.getcode.entity.Study;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardDto {

    private Long id;
    private String type;
    private String subject;
    private String content;
    //스터디아이디
    private Long studyid;
    private int viewcnt;
    private String regDate;
    private String modifyDate;
    private String createdBy;
    private String modifiedBy;

}
