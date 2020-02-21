package com.wasu.hotel.controller;

import com.wasu.hotel.domain.Hotel;
import com.wasu.hotel.domain.OrdersWasu;
import com.wasu.hotel.service.IHotelSimpleService;
import com.wasu.hotel.service.IOrdersWasuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.net.URLDecoder;
import java.util.List;

@Controller
@RequestMapping("/orders")
public class OrdersController {


    @Autowired
    private IOrdersWasuService ordersWasuService;

//    @RequestMapping("/findAll.do")
//    public ModelAndView findAll(@RequestParam(name = "limit", required = true, defaultValue = "5000") Integer limit) throws Exception {
//        ModelAndView mv = new ModelAndView();
//        List<OrdersWasu> orders = ordersWasuService.findAll(limit);
//        mv.addObject("orders", orders);
//        mv.setViewName("/pages-test/table.jsp");
//        return mv;
//    }


//    后端分页，前端刷新
//    @RequestMapping("/find.do")
//    public ModelAndView find(@RequestParam(name = "page" , required = true , defaultValue = "1") Integer page , @RequestParam(name = "size",required = true , defaultValue = "10") Integer size) throws Exception {
//        ModelAndView mv=new ModelAndView();
//        List<OrdersWasu> ordersList = ordersWasuService.find(page , size);
//        PageInfo ordersListPage = new PageInfo(ordersList);
//        mv.addObject("ordersList",ordersListPage);
//        mv.setViewName("table3");
//        return mv;
//    }


//    Map转Json
//    @RequestMapping(value = "/find.do",method = RequestMethod.POST)
//    @ResponseBody
//    public DataTableResponse find(@RequestBody DataTableRequest req) throws Exception {
//        //根据当前的数量，算出来要查询的页码，第一页开始从0，第二页是10，每页数量10，所以页码要+1
//        PageHelper.startPage(req.getStart() / 10 + 1, 10);
//        List<OrdersWasu> list = ordersWasuService.findAll();
//        PageInfo<OrdersWasu> pageInfo = new PageInfo<>(list);
//
//        HashMap<String, Object> map = new HashMap<>();
//        map.put("list", list);
//
//        DataTableResponse res = new DataTableResponse();
//        //前端传过来的draw是多少，就返回多少
//        res.setDraw(req.getDraw());
//        //过滤后的数量
//        res.setRecordsFiltered(300);
//        //总共的数量
//        res.setRecordsTotal(300);
//        res.setDataMap(map);
//
//        return res;
//    }

    @RequestMapping("/findAll.do")
    public ModelAndView test() throws Exception {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("table2");
        return mv;
    }


    @RequestMapping("/findByTime.do")
    public ModelAndView findByTime(@RequestParam(name = "startTime", defaultValue = "20190101") String startTime,
                                   @RequestParam(name = "endTime", defaultValue = "20190102") String endTime) {
        ModelAndView mv = new ModelAndView();
//        List<OrdersWasu> byTime = ordersWasuService.findByTime(startTime, endTime, limit);
        mv.addObject("startTime",startTime );
        mv.addObject("endTime",endTime );
        mv.setViewName("table2-findByTime");
        return mv;
    }

    @RequestMapping("/findByName.do")
    public ModelAndView findByName(@RequestParam(name = "name", defaultValue = "什么都没有") String name, @RequestParam(name = "limit", defaultValue = "5000") Integer limit) throws Exception {
        String str = URLDecoder.decode(name, "utf-8");
        ModelAndView mv = new ModelAndView();
//        List<OrdersWasu> byName = ordersWasuService.findByName("%" + str + "%", limit);
        mv.addObject("hotelName", str);
        mv.setViewName("table2-findByName");
        return mv;
    }


    //酒店名称、累计量
    @Autowired
    private IHotelSimpleService hotelSimpleService;

    @RequestMapping("/hotelInfo.do")
    public ModelAndView hotelInfo() throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Hotel> hotelsList = hotelSimpleService.findAll();
        mv.addObject("hotelList", hotelsList);
        mv.setViewName("hotel-list");
        return mv;
    }


    //搜索  findAll是为了下拉框
    @RequestMapping("/search.do")
    public ModelAndView searchPage() throws Exception {
        ModelAndView mv = new ModelAndView();
        List<Hotel> hotelsList = hotelSimpleService.findAll();
        mv.addObject("hotelList", hotelsList);
        mv.setViewName("search");
        return mv;
    }


    //酒店信息
    @RequestMapping("/orderInfo.do")
    public ModelAndView orderInfo( @RequestParam(name = "id", required = true, defaultValue = "1") Integer id) throws Exception {
        ModelAndView mv = new ModelAndView();
        OrdersWasu orderInfo = ordersWasuService.orderInfo(id);
        mv.addObject("orderInfo", orderInfo);
        mv.setViewName("orderInfo");
        return mv;
    }

}
