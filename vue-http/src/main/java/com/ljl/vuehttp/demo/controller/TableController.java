package com.ljl.vuehttp.demo.controller;

import com.ljl.vuehttp.core.common.RestResult;
import com.ljl.vuehttp.demo.model.Article;
import com.ljl.vuehttp.demo.repository.ArticleRepository;
import com.ljl.vuehttp.demo.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.ImportAutoConfiguration;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

@RestController
public class TableController {
    @Autowired
    private ArticleService articleService;
    @Autowired
    private ArticleRepository articleRepository;

    private boolean isnotnull(String s){
        if(s==null||s.length()==0||"null".equals(s)){
            return false;
        }
        return true;
    }
    @RequestMapping("table/list")
    @PreAuthorize("hasRole('ADMIN')")
    public RestResult listData(@RequestBody Map<String,String> requestMap){
        int pageNum=1;
        int pageSize =10;
            String spageNum = String.valueOf(requestMap.get("pageNum"));
            String spageSize =String.valueOf(requestMap.get("pageSize"));
            if(isnotnull(spageNum)){
                pageNum = Integer.parseInt(spageNum);
            }
            if(isnotnull(spageSize)){
                pageSize =Integer.parseInt(spageSize);
            }
        pageNum=pageNum-1;
        PageRequest pageRequest = new PageRequest(pageNum,pageSize);
        Page<Article> page = articleService.findArticleByTitle(requestMap.get("word"),pageRequest);
         return new RestResult(page);
    }
    @RequestMapping("table/get")
    @PreAuthorize("hasRole('ADMIN')")
    public RestResult getOne(@RequestBody Long id){
        Article article = articleRepository.getOne(id);
        return new RestResult(article);
    }
    @RequestMapping("table/delete")
    @PreAuthorize("hasRole('ADMIN')")
    public RestResult delete(@RequestBody Long id){
        articleRepository.delete(id);
        return new RestResult("");
    }
    @RequestMapping("table/update")
    @PreAuthorize("hasRole('ADMIN')")
    public RestResult update(@RequestBody Article article){
        articleRepository.save(article);
        return new RestResult("");
    }
    @RequestMapping("table/add")
    @PreAuthorize("hasRole('ADMIN')")
    public RestResult add(@RequestBody Article article){
        articleRepository.save(article);
        return new RestResult("");
    }
}
