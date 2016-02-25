package com.thoughtworks.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import  java.util.*;
/**
 * Created by zhaochuxin on 16/2/24.
 */
@Controller
public class BookList {
    @RequestMapping("bookList")
    public ModelAndView testSpring(){

        ModelAndView modelAndView = new ModelAndView("booklist");
        return modelAndView;
    }
    @RequestMapping("detail")
    public ModelAndView detail(HttpServletRequest request){
        System.out.println(request.getParameter("id"));
        ModelAndView modelAndView = new ModelAndView("detail");
//        modelAndView.addObject("name","chuxin");
        modelAndView.addObject("id",request.getParameter("id"));
        return modelAndView;
    }
    @RequestMapping("shopcard")
    public ModelAndView shopcard(HttpServletRequest request){
        ModelAndView modelAndView = new ModelAndView("shopcard");
          int t=Integer.parseInt(request.getParameter("id"))/10;
        System.out.println(request.getParameter("id"+1));
        modelAndView.addObject("id0",request.getParameter("id0"));
        for(int i=1;i<=t;i++)
        {
            modelAndView.addObject("id"+i,request.getParameter("id"+i));
        }

        return modelAndView;
    }
    @RequestMapping("successsubmit")
    public ModelAndView successsubmit(){
        ModelAndView modelAndView = new ModelAndView("successsubmit");


        return modelAndView;
    }
}
