package com.application.controller;


import com.application.model.Announcement;
import com.application.service.AnnouncementService;
import com.application.storage.FileStorage;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AnnouncementController {

    @Autowired
    private AnnouncementService announcementService;


    @GetMapping(value = "/create-announcement")
    public ModelAndView create()
    {
        ModelAndView modelAndView= new ModelAndView("announcement/create");

        return  modelAndView;
    }

    @PostMapping(value = "/save-announcement")
    public ModelAndView save(@RequestParam("title") String title, @RequestParam("content") String content,@RequestParam("remark") String remark)
    {
        ModelAndView modelAndView =new ModelAndView("announcement/list");

//        String file1Name= file1.getOriginalFilename();
//        String file2Name= file2.getOriginalFilename();
//        String file3Name= file3.getOriginalFilename();

        Announcement announcement =new Announcement(title, content, null,null, null ,remark);
//        if(!file1.isEmpty()){
//            fileStorage.store(file1);
//
//        }
//
//        fileStorage.store(file2);
//        fileStorage.store(file3);


    announcementService.insert(announcement);

    modelAndView.addObject("announcements", announcementService.select());

    return modelAndView;

    }


    //update announcement
    @GetMapping(value = "/update-announcement/{id}")
    public ModelAndView update(@PathVariable("id") int id)
    {
        ModelAndView modelAndView = new ModelAndView("announcement/update");

        modelAndView.addObject("update", true);
        modelAndView.addObject("announcement", announcementService.find(id));

        return modelAndView;
    }


    ///list announcements
    @GetMapping(value = "/list-announcements")
    public ModelAndView list()
    {
        ModelAndView modelAndView = new ModelAndView("announcement/list");
        modelAndView.addObject("announcements", announcementService.select());

        return  modelAndView;
    }


    //delete announcement
    @GetMapping(value = "/delete-announcement/{id}")
    public ModelAndView delete(@PathVariable("id") int id)
    {
        ModelAndView modelAndView = new ModelAndView("redirect:/list-announcements");
        announcementService.delete(id);

        return modelAndView;
    }
}