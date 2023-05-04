package com.yuri.getcode.entity;

import org.imgscalr.Scalr;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.FileCopyUtils;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.text.DecimalFormat;
import java.util.Calendar;
import java.util.UUID;


public class UploadFileUtils {

    private static final Logger logger = LoggerFactory.getLogger(UploadFileUtils.class);

    //파일업로드 필요한 매개변수 받는 메소드
    public static String uploadFile(String uploadPath, String originalName, byte[] fileData) throws Exception {

        UUID uid = UUID.randomUUID();
        String savedName = uid.toString() +"_"+originalName;
        //저장될 경로를 계산
        String savedPath = calcPath(uploadPath);
        File target =  new File(uploadPath + savedPath,savedName);
        //원본 파일을 저장하는 부분
        FileCopyUtils.copy(fileData,target);
        //원본 파일의 확장자를 이용해서, 이미지 파일인 경우와 아닌 경우 처리
        String formatName = originalName.substring(originalName.lastIndexOf(".")+1);
        String uploadFileName = null;
        //이미지 타입인 경우 썸네일 생성하고, 아니면 아이콘을 만들어서 경로 처리 치환
        if(MediaUtils.getMediaType(formatName) != null){
            uploadFileName = makeThumbnail(uploadPath, savedPath, savedName);
        } else {
            uploadFileName = makeIcon(uploadPath, savedPath,savedName);
        }

        return uploadFileName;
    }

    //아이콘 생성 메소드
    private static String makeIcon(String uploadPath, String path, String fileName) throws Exception  {
        String iconName = uploadPath + path + File.separator + fileName;
        return iconName.substring(uploadPath.length()).replace(File.separatorChar,'/');
    }


    //시스템의 날짜에 맞는 년월일 데이터를 가져오고,
    //기본 경로와 함께 makeDIr로 데이터 전달
    private static String calcPath(String uploadPath) {
        Calendar cal = Calendar.getInstance();
        String yearPath = File.separator + cal.get(Calendar.YEAR);
        String monthPath = yearPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.MONTH) + 1);
        String datePath = monthPath + File.separator + new DecimalFormat("00").format(cal.get(Calendar.DATE));
        makeDir(uploadPath, yearPath, monthPath, datePath);
        logger.info(datePath);
        return datePath;
    }

    //받아온 기본 경로와 날짜데이터를 가지고, 폴더를 생성함
    private static void makeDir(String uploadPath, String... paths) {
        if (new File(uploadPath + paths[paths.length - 1]).exists()) {
            return;
        }
        for (String path : paths) {
            File dirPath = new File(uploadPath + path);
            if (!dirPath.exists()) {
                dirPath.mkdir();
            }
        }
    }

    //썸네일 생성하는 코드
    //기본경로, 년월일 폴더, 현재업로드파일이름 이용
    private static String makeThumbnail(String uploadPath, String path, String fileName) throws Exception{
        //원본 파일을 메모리상으로 로드함
        BufferedImage sourceImg = ImageIO.read(new File(uploadPath + path, fileName));
        //정해진 크기에 맞게 작은 이미지 파일에 원본 이미지 복사
        //Scalr.Mode.FIT_TO_HEIGHT : 썸네일 이미지 파일의 높이를 뒤에 지정된 100px로 동일하게 만들어줌
        BufferedImage destImg = Scalr.resize(sourceImg, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_HEIGHT,100);
        //썸네일 이미지 파일명에는 UUID값이 사용된 이후 반드시 's_'로 시작하도록 설정되게하여,
        //s로 시작하면 썸네일 이미지이고, 제외하면 원본 파일이름
        String thumbnailName = uploadPath + path + File.separator + "s_"+fileName;
        File newFile = new File(thumbnailName);
        String formatName = fileName.substring(fileName.lastIndexOf(".")+1);
        ImageIO.write(destImg, formatName.toUpperCase(),newFile);
        //w 는 정상경로로 인식되지 않기 때문에 /로 치환해줌
        return thumbnailName.substring(uploadPath.length()).replace(File.separatorChar,'/');
    }


}
