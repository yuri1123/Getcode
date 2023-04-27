package com.yuri.getcode.entity;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardReply extends BaseEntity{

        private Long id;
        //게시물 아이디
        private Board board;
        private String content;
//        private int viewcnt;

}



