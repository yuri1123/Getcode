package com.yuri.getcode.dto;

import com.yuri.getcode.entity.BaseEntity;
import com.yuri.getcode.entity.MyStudy;
import com.yuri.getcode.entity.Study;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter@Setter@ToString
public class MyStudyItemsDto {

    private Long id;
    private MyStudy myStudy;
    private Study study;
    private String regDate;
    private String modifyDate;
    private String createdBy;
    private String modifiedBy;

}