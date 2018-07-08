package com.application.service;

import com.application.model.Article;
import com.application.repository.ArticleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ArticleService {

    @Autowired
    private ArticleRepository articleRepository;

    public Iterable<Article> select()
    {
        return articleRepository.findAll();
    }

    public Article find(int id)
    {
        return articleRepository.findOne(id);
    }

    public void insert(Article article)
    {
        articleRepository.save(article);
    }

    public void delete(int id)
    {
        articleRepository.delete(id);
    }
}
