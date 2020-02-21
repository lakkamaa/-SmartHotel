package com.wasu.hotel.controller;


import com.github.pagehelper.PageInfo;
import com.wasu.hotel.domain.OrdersWasu;
import com.wasu.hotel.service.IOrdersWasuService;
import com.wasu.hotel.utils.PageUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/ajax")
public class AjaxController {

    @RequestMapping("/test.do")
    public ModelAndView test() throws Exception {
        ModelAndView mv = new ModelAndView();
        mv.setViewName("table2");
        return mv;
    }

    /**
     * DataTable分页
     * @param draw
     * @param start
     * @param length
     * @return
     */

    @Autowired
    private IOrdersWasuService ordersWasuService;

    @RequestMapping(value = "/page.do",method = RequestMethod.POST)
    public @ResponseBody PageUtils<?> pageTable(@RequestParam(value = "draw",required = true,defaultValue = "0")Integer draw,
                                      @RequestParam(value = "start",required = true,defaultValue = "0")Integer start,
                                      @RequestParam(value = "length",required = true,defaultValue = "10")Integer length) throws Exception {
        //转换为整形

        //查询
        Integer pageStart = start/length + 1;
        List<OrdersWasu> ordersList = ordersWasuService.find(pageStart,length);
        PageInfo ordersListPage = new PageInfo(ordersList);

        //PageInfo为自定义dto对象
        PageUtils<OrdersWasu> page = new PageUtils<>(draw,ordersListPage.getTotal(),ordersListPage.getTotal(),ordersListPage.getList(),null);

//        System.out.println(page.toString());
//        for (OrdersWasu datum : page.getData()) {
//            System.out.println("==========================");
//            System.out.println(datum.toString());
//        }
        return page;
    }


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

    @RequestMapping(value = "/findByTime.do",method = RequestMethod.POST)
    public @ResponseBody PageUtils<?> findByTime(@RequestParam(value = "draw",required = true,defaultValue = "0")Integer draw,
                                                 @RequestParam(value = "start",required = true,defaultValue = "0")Integer start,
                                                 @RequestParam(value = "length",required = true,defaultValue = "10")Integer length,
                                                 @RequestParam(name = "startTime", defaultValue = "20190101") String startTime,
                                                 @RequestParam(name = "endTime", defaultValue = "20190102") String endTime
    ) throws Exception {
        //转换为整形

        //查询
        Integer pageStart = start/length + 1;
        List<OrdersWasu> ordersList = ordersWasuService.findByTime(startTime,endTime,pageStart,length);
        PageInfo ordersListPage = new PageInfo(ordersList);

        //PageInfo为自定义dto对象
        PageUtils<OrdersWasu> page = new PageUtils<>(draw,ordersListPage.getTotal(),ordersListPage.getTotal(),ordersListPage.getList(),null);

        return page;
    }



    @RequestMapping(value = "/findByName.do",method = RequestMethod.POST)
    public @ResponseBody PageUtils<?> findByName(@RequestParam(value = "draw",required = true,defaultValue = "0")Integer draw,
                                                 @RequestParam(value = "start",required = true,defaultValue = "0")Integer start,
                                                 @RequestParam(value = "length",required = true,defaultValue = "10")Integer length,
                                                 @RequestParam(value = "hotelName",required = true,defaultValue = "什么都没有")String hotelName

    ) throws Exception {
        //转换为整形

        //查询
        Integer pageStart = start/length + 1;
        List<OrdersWasu> ordersList = ordersWasuService.findByName("%"+ hotelName +"%",pageStart,length);
        PageInfo ordersListPage = new PageInfo(ordersList);

        //PageInfo为自定义dto对象
        PageUtils<OrdersWasu> page = new PageUtils<>(draw,ordersListPage.getTotal(),ordersListPage.getTotal(),ordersListPage.getList(),null);

        return page;
    }


}
