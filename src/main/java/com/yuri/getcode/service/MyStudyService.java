package com.yuri.getcode.service;

import com.yuri.getcode.dao.MystudyDao;
import com.yuri.getcode.dao.QuestionDao;
import com.yuri.getcode.dto.MyStudyDto;
import com.yuri.getcode.dto.QuestionDto;
import com.yuri.getcode.dto.UserDto;
import com.yuri.getcode.entity.MyStudy;
import com.yuri.getcode.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

@Service
public class MyStudyService {

    @Autowired
    private MystudyDao mystudyDao;

    public int createmystudy(MyStudyDto myStudyDto) {

//        //현재 상품이 장바구니에 이미들어가 있는지 조회한다.
//        CartItem savedCartItem =
//                cartItemRepository.findByCartIdAndItemId(cart.getId(), item.getId());
//        //장바구니에 이미 있던 상품일 경우 기존 수량에 현재 장바구니에 담을 수량 만큼 더해준다.
//        if(savedCartItem != null){
//            savedCartItem.addCount(cartItemDto.getCount());
//            return savedCartItem.getId();
//        } else {
//            //장바구니 엔티티, 상품 엔티티, 장바구니에 담을 수량을 이용하여 CartItem 엔티티 생성
//            CartItem cartItem =
//                    CartItem.createCartItem(cart, item, cartItemDto.getCount());
//            //장바구니에 들어갈 상품을 저장한다.
//            cartItemRepository.save(cartItem);
//            return cartItem.getId();
//        }
        return mystudyDao.createmystudy(myStudyDto);
    }

    public MyStudy findbyuserid(Long userid){
        return mystudyDao.findbyuserid(userid);
    }

}
