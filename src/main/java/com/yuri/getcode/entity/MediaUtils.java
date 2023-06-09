package com.yuri.getcode.entity;

import org.springframework.http.MediaType;

import java.util.HashMap;
import java.util.Map;

public class MediaUtils {

    //저장한 파일이 이미지 타입인지를 판별하기 위한 클래스
    private static Map<String, MediaType> mediaMap;
    static {
        mediaMap = new HashMap<String, MediaType>();
        mediaMap.put("JPG",MediaType.IMAGE_JPEG);
        mediaMap.put("GIF",MediaType.IMAGE_GIF);
        mediaMap.put("PNG",MediaType.IMAGE_PNG);
    }
    public static MediaType getMediaType(String type){
        return mediaMap.get(type.toUpperCase());
    }
}
