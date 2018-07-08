package com.application.service;

import com.application.model.News;
import com.application.repository.NewsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class NewsService {

    @Autowired
    private NewsRepository newsRepository;

    public void insert(News news)
    {
        newsRepository.save(news);
    }


    public Iterable<News> select()
    {
        return newsRepository.findAll();
    }

    public void delete(int id)
    {
        newsRepository.delete(id);
    }

    public News find(int id)
    {
        return newsRepository.findOne(id);
    }

}
