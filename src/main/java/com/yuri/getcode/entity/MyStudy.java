package com.yuri.getcode.entity;

import com.yuri.getcode.dto.UserDto;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter@Setter@ToString
public class MyStudy extends BaseEntity{

    private Long id;
    private User user;

//    public static MyStudy createMyStudy(User user){
//        MyStudy myStudy = new MyStudy();
//        myStudy.setUser(user);
//        return myStudy;
//    }


}