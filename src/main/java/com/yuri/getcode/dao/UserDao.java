package com.yuri.getcode.dao;

import com.yuri.getcode.dto.UserDto;
import com.yuri.getcode.entity.User;

import java.util.List;

public interface UserDao {

    int signup(UserDto userDto);
    UserDto login(UserDto userDto);

}
