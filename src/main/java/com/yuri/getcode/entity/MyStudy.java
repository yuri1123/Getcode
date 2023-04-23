package com.yuri.getcode.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter@Setter@ToString
public class MyStudy extends BaseEntity{

    private Long id;
    private User user;

}