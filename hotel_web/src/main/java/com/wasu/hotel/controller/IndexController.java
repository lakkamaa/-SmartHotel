package com.wasu.hotel.controller;

import com.github.pagehelper.PageInfo;
import com.wasu.hotel.domain.OrdersWasu;
import com.wasu.hotel.service.*;

import com.wasu.hotel.utils.PageUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


import java.util.Collections;
import java.util.List;


@Controller
@RequestMapping("/home")
public class IndexController {

    @Autowired
    private ILabelService labelService;

//    @Autowired
//    private IOrdersWasuService ordersWasuService;

    @Autowired
    private IChartsService chartsService;

    @RequestMapping("/findAll.do")
    public ModelAndView findAll(@RequestParam(name = "page" , defaultValue = "1") Integer page , @RequestParam(name = "size" , defaultValue = "5") Integer size) throws Exception {
        ModelAndView mv=new ModelAndView();
        mv.addObject("label",labelService.all());
//        mv.addObject("orders",new PageInfo(ordersWasuService.find(page,size)));
        mv.addObject("lineChart",chartsService.chartChange(chartsService.lineChartDayly()));
        Integer lineMax = new Integer(Collections.max(chartsService.chartChange(chartsService.lineChartDayly()).getValue()));
        mv.addObject("lineMax",lineMax);
        mv.addObject("areaChart",chartsService.groupByArea());
        mv.addObject("sourceChart",chartsService.groupBySource());
        mv.setViewName("index_data_3");
        return mv;
    }


}
