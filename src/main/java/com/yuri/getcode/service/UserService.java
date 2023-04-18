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
    //회원가입
    public int signup(UserDto userDto) {
        return userDao.signup(userDto);
    }
    //로그인
    public UserDto login(UserDto userDto){
        return userDao.login(userDto);
    }
    //회원 전체 목록 조회
    public List<UserDto> selectall(){
        return userDao.selectall();
    }
    //회원 권한 변경하기
    public int updaterole(Map<String, Object> params){
        return userDao.updaterole(params);
    }
    //회원정보 조회하기
    public List<UserDto> selectinfo(Long id){
        return userDao.selectinfo(id);
    }
}
