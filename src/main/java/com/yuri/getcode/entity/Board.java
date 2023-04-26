package com.yuri.getcode.entity;

import com.yuri.getcode.constant.BoardType;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Board extends BaseEntity{

        private Long id;
        private String type;
        private String subject;
        private String content;
        //스터디아이디
        private Study study;
        private int viewcnt;

}



