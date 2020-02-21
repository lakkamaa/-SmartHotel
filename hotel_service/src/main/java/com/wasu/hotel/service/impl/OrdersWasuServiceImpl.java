package com.wasu.hotel.service.impl;

import com.github.pagehelper.PageHelper;
import com.wasu.hotel.dao.IOrdersWasuDao;
import com.wasu.hotel.domain.OrdersWasu;
import com.wasu.hotel.service.IOrdersWasuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class OrdersWasuServiceImpl implements IOrdersWasuService {

    @Autowired
    private IOrdersWasuDao ordersWasuDao;

    @Override
    public List<OrdersWasu> findAll() throws Exception {
        return ordersWasuDao.find100();
    }

    @Override
    public List<OrdersWasu> findByTime(String startTime, String endTime,Integer page , Integer size) throws Exception {
        PageHelper.startPage(page, size);
        return ordersWasuDao.findByTime(startTime , endTime);
    }


    @Override
    public List<OrdersWasu> findAll(Integer limit) throws Exception {
        return ordersWasuDao.findAll(limit);
    }

    @Override
    public List<OrdersWasu> findByName(String name, Integer page, Integer size) throws Exception {
        PageHelper.startPage(page, size);
        return ordersWasuDao.findByName(name);
    }

    @Override
    public OrdersWasu orderInfo(Integer id) throws Exception {
        return ordersWasuDao.orderInfo(id);
    }

    @Override
    public List<OrdersWasu> find(Integer page , Integer size) throws Exception {
        PageHelper.startPage(page, size);
        return ordersWasuDao.find();
    }

}
