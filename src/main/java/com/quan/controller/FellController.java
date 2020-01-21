package com.quan.controller;

import com.quan.pojo.Feel;
import com.quan.service.FeelService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

@Controller
public class FellController {
    @Resource
    private FeelService feelService;
    @RequestMapping("/upload")
    @ResponseBody
    public Map<String,Object> upload(MultipartFile imgFile){
        return feelService.upload(imgFile);
    }
    // RequestParam 把请求的 imags 参数往 List 里面扔


    @RequestMapping(value="insert")
    @ResponseBody
    public String insert(Feel feel, @RequestParam("imgs") List<String> imags){
        System.out.println(feel.getTitle());
        int index = feelService.insFell(feel,imags);
        if(index == 1){
            return "发布成功，不要偷偷骂我，我在后台看得到";
        }else{
            return "发布失败";
        }
    }
}
