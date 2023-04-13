package com.yuri.getcode.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Answer extends BaseEntity{

    private Long id;
    private String content;

}
