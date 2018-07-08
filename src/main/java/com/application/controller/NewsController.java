package com.application.controller;


import com.application.model.Announcement;
import com.application.model.News;
import com.application.service.NewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class NewsController {

    @Autowired
    private NewsService newsService;

    @GetMapping(value = "/create-news")
    public ModelAndView create()
    {
        ModelAndView modelAndView = new ModelAndView("news/create");

        return modelAndView;
    }


    @GetMapping(value = "/list-news")
    public ModelAndView select()
    {
        ModelAndView modelAndView = new ModelAndView("news/list");
        modelAndView.addObject("news", newsService.select());
        return modelAndView;
    }


    @PostMapping(value = "/save-news")
    public ModelAndView save(@RequestParam("title") String title, @RequestParam("content") String content, @RequestParam("remark") String remark)
    {
        ModelAndView modelAndView =new ModelAndView("news/list");
        News news =new News(title, content, null,null, null ,remark);
        newsService.insert(news);

        modelAndView.addObject("news", newsService.select());

        return modelAndView;

    }


    //update announcement
    @GetMapping(value = "/update-news/{id}")
    public ModelAndView update(@PathVariable("id") int id)
    {
        ModelAndView modelAndView = new ModelAndView("news/update");

        modelAndView.addObject("update", true);
        modelAndView.addObject("news", newsService.find(id));

        return modelAndView;
    }





    //delete announcement
    @GetMapping(value = "/delete-news/{id}")
    public ModelAndView delete(@PathVariable("id") int id)
    {
        ModelAndView modelAndView = new ModelAndView("redirect:/list-news");
        newsService.delete(id);

        return modelAndView;
    }

}
