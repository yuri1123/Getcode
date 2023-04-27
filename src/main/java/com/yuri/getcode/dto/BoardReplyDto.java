package com.yuri.getcode.dto;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardReplyDto {

    private Long id;
    private Long boardid;
    private String content;
    private String regDate;
    private String modifyDate;
    private String createdBy;
    private String modifiedBy;

}
