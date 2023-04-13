package com.yuri.getcode.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BaseEntity {

    private String regDate;
    private String modifyDate;
    private String createdBy;
    private String modifiedBy;

}
