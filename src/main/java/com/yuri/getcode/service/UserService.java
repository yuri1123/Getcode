package com.yuri.getcode.service;

import com.yuri.getcode.dao.UserDao;
import com.yuri.getcode.dto.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public interface UserService {

    int signup(UserDto userDto);
    UserDto login(UserDto userDto);

}
