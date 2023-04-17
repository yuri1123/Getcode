package com.yuri.getcode.service;

import com.yuri.getcode.dao.UserDao;
import com.yuri.getcode.dto.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class UserService {

    @Autowired
    private UserDao userDao;

    public int signup(UserDto userDto) {
        return userDao.signup(userDto);
    }

    public UserDto login(UserDto userDto){
        return userDao.login(userDto);
    }
    public List<UserDto> selectall(){
        return userDao.selectall();
    }
    public int updaterole(Map<String, Object> params){
        return userDao.updaterole(params);
    }
}
