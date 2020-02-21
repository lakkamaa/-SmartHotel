package com.wasu.hotel.dao;


import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;


public interface ILabelDao {

    @Select("SELECT COUNT(*) as hotelNum FROM(SELECT DISTINCT NAME FROM t_order)；")
    public Integer hotelNum() throws Exception;

    @Select("SELECT COUNT(id),DATE(start_time) FROM t_order WHERE DATE(start_time) = DATE(NOW()) GROUP BY DATE( start_time )")
    public Integer todayNum() throws Exception;

    @Select("SELECT COUNT(id) FROM t_order WHERE (start_time BETWEEN (SELECT DATE_SUB(NOW(),INTERVAL 1 WEEK)) AND NOW())")
    public Integer weekNum() throws Exception;

    @Select("SELECT COUNT(id) FROM t_order")
    public Integer totalNum() throws Exception;
}
