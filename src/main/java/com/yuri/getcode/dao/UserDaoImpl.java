package com.yuri.getcode.dao;

import com.yuri.getcode.dto.UserDto;
import com.yuri.getcode.entity.User;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public class UserDaoImpl implements UserDao {

    @Autowired
    private SqlSession sqlSession;
    private static final String namespace = "com.yuri.getcode.userMapper";

    public int signup(UserDto userDto) {
        return sqlSession.insert(namespace + ".signup", userDto);
    }

    public UserDto login(UserDto userDto) {
        return sqlSession.selectOne(namespace+".login", userDto);
    }
}
