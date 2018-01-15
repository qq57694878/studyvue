package com.ljl.vuehttp.demo.controller;

import com.ljl.vuehttp.core.common.RestResult;
import com.ljl.vuehttp.demo.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.PageRequest;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
public class TableController {
    @Autowired
    private ArticleService articleService;
    @RequestMapping("/table/list")
    public RestResult listData(@RequestBody Map<String,String> requestMap, @ModelAttribute PageRequest pageRequest){
         return new RestResult(articleService.findArticleByTitle(requestMap.get("title"),pageRequest));
    }
}
