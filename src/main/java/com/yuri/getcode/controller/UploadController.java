package com.yuri.getcode.controller;

import com.yuri.getcode.entity.MediaUtils;
import com.yuri.getcode.entity.UploadFileUtils;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.UUID;

public class UploadController {

    @Value("${uploadPath}")
    private String uploadPath;

    private String uploadFile(String originalName, byte[] fileData) throws Exception{
        UUID uuid = UUID.randomUUID();
        String savedName = uuid.toString()+"_"+originalName;
        File target = new File(uploadPath,savedName);
        FileCopyUtils.copy(fileData,target);
        return savedName;
    }

    @ResponseBody
    @RequestMapping(value="/uploadAjax", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
    public ResponseEntity<String> updateinfo(MultipartFile file) throws Exception{

        System.out.println("originalName : " + file.getOriginalFilename());

        return new ResponseEntity<>(UploadFileUtils.uploadFile(uploadPath,file.getOriginalFilename(), file.getBytes()), HttpStatus.CREATED);
    }

    //파일 전송 기능 구현
    //파라미터로 브라우저에서 전송받기를 원하는 파일의 이름을 받고, 파일의 이름은 '/년/월/일/파일명'의 형태로 입력 받음
    @ResponseBody
    @RequestMapping("/displayFile")
    public ResponseEntity<byte[]> displayFIle(String fileName) throws Exception {
        InputStream in = null;
        ResponseEntity<byte[]> entity = null;
        System.out.println("File Name : +fileName");
        try {
            //확장자 추출하고 이미지 타입 파일의 경우 적절한 MIME 타입 지정
            String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
            MediaType mType = MediaUtils.getMediaType(formatName);
            HttpHeaders headers = new HttpHeaders();
            in = new FileInputStream(uploadPath + fileName);
            if(mType != null){
                headers.setContentType(mType);
            } else {
                //이미지가 아니면 MIME타입을 다운로드 용으로 사용되는 application/octet-stream으로 지정하고, 다운로드 창을 열어줌
                fileName = fileName.substring(fileName.indexOf("_")+1);
                headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
                //다운로드 시 사용자에게 보이는 파일 이름을 한글 인코딩해서 전송
                headers.add("Content-Disposition","attachment;filename=\""+
                new String(fileName.getBytes("UTF-8"), "ISO-8859-1")+"\"");
            }
            //실제로 데이터를 읽어서 commons 라이브러리 기능을 활용해 대상 파일에서 데이터를 읽어냄
            entity = new ResponseEntity<byte[]>(IOUtils.toByteArray(in),headers,HttpStatus.CREATED);
        } catch(Exception e){
            e.printStackTrace();
            entity = new ResponseEntity<byte[]>(HttpStatus.BAD_REQUEST);
        } finally {
            in.close();
        }
        return entity;
    }


}
