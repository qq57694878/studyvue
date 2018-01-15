package com.ljl.vuehttp.demo.service;

import com.ljl.vuehttp.core.common.RestResult;
import com.ljl.vuehttp.demo.model.Article;
import com.ljl.vuehttp.demo.repository.ArticleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Predicate;
import javax.persistence.criteria.Root;
import java.util.ArrayList;
import java.util.List;

@Service
public class ArticleService {
    @Autowired
    private ArticleRepository articleRepository;
    public RestResult findArticleByTitle(String title,Pageable pageRequest){
        Sort sort = new Sort(Sort.Direction.ASC,"id");
        Pageable pageable = new PageRequest(pageRequest.getPageNumber(),pageRequest.getPageSize(),sort);
        Page<Article> page  =articleRepository.findAll(new Specification<Article>() {
            @Override
            public Predicate toPredicate(Root<Article> root, CriteriaQuery<?> criteriaQuery, CriteriaBuilder criteriaBuilder) {
             return criteriaBuilder.and(criteriaBuilder.like(root.get("title"),"%" + title + "%"));
            }
        },pageable);
        return new RestResult(page);
    }
}