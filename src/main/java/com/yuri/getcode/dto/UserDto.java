package com.yuri.getcode.dto;

import com.yuri.getcode.constant.Role;
import lombok.Getter;
import lombok.Setter;
import lombok.ToString;
import org.springframework.web.multipart.MultipartFile;

@Getter
@Setter
@ToString
public class UserDto {

    private Long id;
    private String userid;
    private String password;
    private String username;
    private String nickname;
    private String email;
    private String phonenumber;
    private String postcode;
    private String address1;
    private String address2;
    private String birthday;
    private String sex;
    private String role;
    private String regDate;
    private String modifyDate;
    private String createdBy;
    private String modifiedBy;
    private String avatarimage;
    private String avatarImageType;

}
