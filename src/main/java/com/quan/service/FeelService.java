package com.quan.service;

import com.quan.pojo.Feel;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;
import java.util.Map;

public interface FeelService {
    Map<String,Object> upload(MultipartFile imgFile);

    int insFell(Feel feel, List<String> imags);
}
