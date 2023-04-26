package com.yuri.getcode.dao;

import com.yuri.getcode.dto.MyStudyItemsDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Map;

@Repository
public class MystudyitemsDao {

    @Autowired
    private SqlSession sqlSession;
    private static final String namespace = "com.yuri.getcode.mystudyitemsMapper";

    public int createmystudyitem(MyStudyItemsDto myStudyItemsDto) {
        return sqlSession.insert(namespace + ".createmystudyitem",myStudyItemsDto);
    }

    public MyStudyItemsDto findbymystudynum(Map<String,Object> params){
        return sqlSession.selectOne(namespace+".findbymystudynum",params);
    }

}
