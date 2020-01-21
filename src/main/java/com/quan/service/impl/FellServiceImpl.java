package com.quan.service.impl;

import com.quan.mapper.FeelMapper;
import com.quan.mapper.ImgMapper;
import com.quan.pojo.Feel;
import com.quan.pojo.Img;
import com.quan.service.FeelService;
import com.quan.utils.FtpUtil;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@Service
@Repository
public class FellServiceImpl implements FeelService {


    @Resource
    private FeelMapper feelMapper;
    @Resource
    private ImgMapper imgMapper;
    @Override
    public Map<String,Object> upload(MultipartFile imgFile) {
        String fileName = UUID.randomUUID()+imgFile.getOriginalFilename().substring(imgFile.getOriginalFilename().lastIndexOf("."));
        Map<String,Object> map = new HashMap<>();
        boolean result = false;
        try {
            result =  FtpUtil.uploadFile("192.168.43.224",21,"ftpuser","spring555",fileName,imgFile.getInputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }
        if(result){
            map.put("error",0);
            map.put("url","http://192.168.43.224/"+fileName);
        }else {
            map.put("error",1);
            map.put("message","图片上传失败");
        }
        return map;
    }

    @Override
    public int insFell(Feel feel, List<String> imags) {
        long timeMillis = System.currentTimeMillis();
        System.out.println(timeMillis);
        feel.setId(timeMillis);
        int index = feelMapper.insertSelective(feel);
        if(index>0){
            for (String s:imags){
                Img img = new Img();
                img.setFid(timeMillis);
                img.setPath(s);
                index += imgMapper.insertSelective(img);
            }
            if(index == imags.size()+1){
                return 1;
            }
        }
        return 0;
    }
}
