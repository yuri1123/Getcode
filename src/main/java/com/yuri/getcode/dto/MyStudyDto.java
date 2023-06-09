package com.yuri.getcode.dto;

import com.yuri.getcode.entity.BaseEntity;
import com.yuri.getcode.entity.User;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter@Setter@ToString
public class MyStudyDto {

    private Long mystudyid;
    private Long userid;
    private String regDate;
    private String modifyDate;
    private String createdBy;
    private String modifiedBy;

}