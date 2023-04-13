package com.yuri.getcode.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Question extends BaseEntity{

        private Long id;
        private String subject;
        private String content;
        private int viewcnt;

}



