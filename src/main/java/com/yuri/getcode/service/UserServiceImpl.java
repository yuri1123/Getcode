package com.yuri.getcode.service;

import com.yuri.getcode.dao.UserDao;
import com.yuri.getcode.dto.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{

    @Autowired
    private UserDao userDao;

    @Override
    public int signup(UserDto userDto) {
        return userDao.signup(userDto);
    }

    @Override
    public UserDto login(UserDto userDto){
        return userDao.login(userDto);
    }
}
