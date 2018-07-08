package com.application.controller;

import com.application.model.Article;
import com.application.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ArticleController {

    @Autowired
    private ArticleService articleService;

    @GetMapping(value = "/create-article")
    public ModelAndView create()
    {
        ModelAndView modelAndView = new ModelAndView("article/create");
        return modelAndView;
    }



    @PostMapping(value = "/save-article")
    public ModelAndView save(@RequestParam("title") String title, @RequestParam("content") String content, @RequestParam("remark") String remark)
    {
        ModelAndView modelAndView =new ModelAndView("article/list");

        Article article =new Article(title, content, null,null, null ,remark);

        articleService.insert(article);

        modelAndView.addObject("articles", articleService.select());

        return modelAndView;

    }


    //update announcement
    @GetMapping(value = "/update-article/{id}")
    public ModelAndView update(@PathVariable("id") int id)
    {
        ModelAndView modelAndView = new ModelAndView("article/update");

        modelAndView.addObject("update", true);
        modelAndView.addObject("article", articleService.find(id));

        return modelAndView;
    }


    ///list announcements
    @GetMapping(value = "/list-articles")
    public ModelAndView list()
    {
        ModelAndView modelAndView = new ModelAndView("article/list");
        modelAndView.addObject("articles", articleService.select());

        return  modelAndView;
    }


    //delete announcement
    @GetMapping(value = "/delete-article/{id}")
    public ModelAndView delete(@PathVariable("id") int id)
    {
        ModelAndView modelAndView = new ModelAndView("redirect:/list-articles");
        articleService.delete(id);

        return modelAndView;
    }

}
