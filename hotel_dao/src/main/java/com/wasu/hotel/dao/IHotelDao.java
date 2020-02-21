package com.wasu.hotel.dao;

import com.wasu.hotel.domain.Hotel;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;


public interface IHotelDao {

    @Select("SELECT NAME, COUNT(t_order.`id`) AS num,t_order.`address`,AREA ,t_order.`lng`,t_order.`lat` FROM t_hotel,t_order WHERE t_hotel.`hotel_name`=t_order.`name` GROUP BY NAME,t_order.`address`,AREA,t_order.`lng`,t_order.`lat`")
    public List<Hotel> findAll() throws Exception;
}
