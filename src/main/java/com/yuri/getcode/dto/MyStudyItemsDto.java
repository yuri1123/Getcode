package com.yuri.getcode.dto;

import com.yuri.getcode.entity.BaseEntity;
import com.yuri.getcode.entity.MyStudy;
import com.yuri.getcode.entity.Study;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter@Setter@ToString
public class MyStudyItemsDto {

    private Long mystudyitemsid;
    private Long mystudyid;
    private Long studyid;
    private String regDate;
    private String modifyDate;
    private String createdBy;
    private String modifiedBy;

}