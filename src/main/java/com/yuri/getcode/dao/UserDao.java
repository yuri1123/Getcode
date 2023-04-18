package com.yuri.getcode.dao;

import com.yuri.getcode.dto.UserDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class UserDao {

    @Autowired
    private SqlSession sqlSession;
    private static final String namespace = "com.yuri.getcode.userMapper";

    public int signup(UserDto userDto) {
        return sqlSession.insert(namespace + ".signup", userDto);
    }

    public UserDto login(UserDto userDto) {
        return sqlSession.selectOne(namespace+".login", userDto);
    }

    public List<UserDto> selectall(){
        return sqlSession.selectList(namespace+".selectall");
    }
    public int updaterole(Map<String,Object> params){
        return sqlSession.update(namespace+".updaterole",params);
    }

    public UserDto selectinfo(Long id){
        return sqlSession.selectOne(namespace+".selectinfo",id);
    }
    public int updateinfo(UserDto userDto){return sqlSession.update(namespace+".updateinfo",userDto);}


}
