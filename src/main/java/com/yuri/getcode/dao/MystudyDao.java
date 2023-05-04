package com.yuri.getcode.dao;

import com.yuri.getcode.dto.MyStudyDto;
import com.yuri.getcode.dto.StudyDto;
import com.yuri.getcode.dto.UserDto;
import com.yuri.getcode.entity.MyStudy;
import com.yuri.getcode.service.MyStudyService;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class MystudyDao {

    @Autowired
    private SqlSession sqlSession;
    private static final String namespace = "com.yuri.getcode.mystudyMapper";

    public int createmystudy(MyStudyDto myStudyDto) {
        return sqlSession.insert(namespace + ".createmystudy",myStudyDto);
    }

    public MyStudyDto findbyuserid(Long userid){
        return sqlSession.selectOne(namespace+".findbyuserid",userid);
    }

    public int deletemystudy(Long id){
        return sqlSession.delete(namespace+".deletemystudy",id);
    }

}
