package com.ljl.vuehttp.demo.model;

import com.ljl.vuehttp.core.simple.model.Authority;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.util.Date;
import java.util.List;

@Entity
@Table(name = "ARTICLE")
public class Article {


    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "article_seq")
    @SequenceGenerator(name = "article_seq", sequenceName = "article_seq", allocationSize = 1)
    private Long id;

    @Column(name = "TITLE", length = 200)
    @NotNull
    @Size(min = 4, max = 50)
    private String title;

    @Column(name = "CONTENT", length = 100)
    @NotNull
    @Size(min = 4, max = 100)
    private String content;



    @Column(name = "CREATE_DATE")
    @Temporal(TemporalType.TIMESTAMP)
    @NotNull
    private Date createDate;


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }
}