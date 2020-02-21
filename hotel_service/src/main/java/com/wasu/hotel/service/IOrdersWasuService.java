package com.wasu.hotel.service;

import com.wasu.hotel.domain.OrdersWasu;

import java.util.List;

public interface IOrdersWasuService {

    public List<OrdersWasu> findAll( ) throws Exception;

    public List<OrdersWasu> findByTime( String startTime, String endTime, Integer page , Integer size) throws Exception;

    public List<OrdersWasu> findAll(Integer limit) throws Exception;

    public List<OrdersWasu> findByName( String name,Integer page , Integer size) throws Exception;

    public OrdersWasu orderInfo(Integer id) throws Exception;

    public List<OrdersWasu> find(Integer page , Integer size) throws Exception;



}
