package com.yuri.getcode.entity;

import com.yuri.getcode.constant.Role;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class User {
    private Long id;
    private String userid;
    private String password;
    private String username;
    private String nickname;
    private String email;
    private String phonenumber;
    private String postNumber;
    private String address1;
    private String address2;
    private String birthday;
    private String sex;
    private Role role;
    private String regTime;
    }

