package com.application.controller;

import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @RequestMapping(value = "/")
    public ModelAndView index()
    {
        ModelAndView modelAndView = new ModelAndView("index");
        return modelAndView;
    }

    @PreAuthorize("hasAnyRole('ADMIN')")
    @RequestMapping(value = "/home/asset/index")
    public ModelAndView security()
    {
        ModelAndView modelAndView = new ModelAndView("home");
        return modelAndView;
    }
}
