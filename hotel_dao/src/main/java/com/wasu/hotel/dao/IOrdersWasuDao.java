package com.wasu.hotel.dao;

import com.wasu.hotel.domain.OrdersWasu;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;


public interface IOrdersWasuDao {

    @Select("SELECT NAME,t_order.`id` AS id,number_of_people,start_time,occupancy_days, order_source,AREA FROM t_order, t_hotel WHERE t_order.`name` = t_hotel.`hotel_name` ORDER BY id DESC LIMIT 0, 100")
    public List<OrdersWasu> find100() throws Exception;


    @Select("SELECT NAME,t_order.`id` AS id,number_of_people,start_time,occupancy_days, order_source,AREA FROM t_order, t_hotel WHERE t_order.`name` = t_hotel.`hotel_name` AND (start_time BETWEEN #{startTime} AND #{endTime}) ORDER BY id DESC ")
    public List<OrdersWasu> findByTime(@Param(value="startTime")String startTime, @Param(value="endTime")String endTime) throws Exception;

//    @Select("SELECT NAME,t_order.`id` AS id,number_of_people,start_time,occupancy_days, order_source,AREA FROM t_order, t_hotel WHERE t_order.`name` = t_hotel.`hotel_name` AND (start_time BETWEEN #{startTime} AND #{endTime}) ORDER BY id DESC LIMIT 0, #{limit}")
//    public List<OrdersWasu> findByTime(@Param(value="startTime")String startTime, @Param(value="endTime")String endTime, @Param(value="limit")Integer limit) throws Exception;


    @Select("SELECT NAME,t_order.`id` AS id,number_of_people,start_time,occupancy_days, order_source,AREA FROM t_order, t_hotel WHERE t_order.`name` = t_hotel.`hotel_name` ORDER BY id DESC LIMIT 0, #{limit}")
    public List<OrdersWasu> findAll( @Param(value="limit") Integer limit) throws Exception;

//    @Select("SELECT NAME,t_order.`id` AS id,number_of_people,start_time,occupancy_days, order_source,AREA FROM t_order, t_hotel WHERE t_order.`name` = t_hotel.`hotel_name` AND (name LIKE #{name}) ORDER BY id DESC LIMIT 0, #{limit}")
//    public List<OrdersWasu> findByName(@Param(value="name")String name, @Param(value="limit")Integer limit) throws Exception;

    @Select("SELECT NAME,t_order.`id` AS id,number_of_people,start_time,occupancy_days, order_source,AREA FROM t_order, t_hotel WHERE t_order.`name` = t_hotel.`hotel_name` AND (name LIKE #{name}) ORDER BY id DESC ")
    public List<OrdersWasu> findByName(@Param(value="name")String name) throws Exception;


    @Select("SELECT NAME,t_order.`id` AS id,number_of_people,start_time,occupancy_days, order_source,AREA, t_order.`lat` AS lat, t_order.`lng` AS lng, t_order.`address` AS address, due_out_date FROM t_order, t_hotel WHERE t_order.`name` = t_hotel.`hotel_name` AND t_order.`id`=#{id}")
    public OrdersWasu orderInfo( @Param(value="id") Integer id) throws Exception;

    @Select("SELECT NAME,t_order.`id` AS id,number_of_people,start_time,occupancy_days, order_source,AREA FROM t_order, t_hotel WHERE t_order.`name` = t_hotel.`hotel_name` ORDER BY id DESC")
    public List<OrdersWasu> find() throws Exception;

    @Select("SELECT NAME,t_order.`id` AS id,number_of_people,start_time,occupancy_days, order_source,AREA FROM t_order, t_hotel WHERE t_order.`name` = t_hotel.`hotel_name` ORDER BY id DESC LIMIT #{start}, #{end}")
    public List<OrdersWasu> findByIndex(@Param(value="start") Integer start, @Param(value="end") Integer end ) throws Exception;

}
