package com.wasu.hotel.dao;

import com.wasu.hotel.domain.AreaChart;
import com.wasu.hotel.domain.LineChartDayly;
import com.wasu.hotel.domain.SourceChart;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import java.util.List;


public interface IChartsDao {

    @Select("SELECT DATE( start_time ) AS date,COUNT(id) AS num FROM t_order GROUP BY DATE( start_time )ORDER BY date DESC limit 0, 100")
    public List<LineChartDayly> lineChartDayly() throws Exception;

    @Select("SELECT DISTINCT AREA,COUNT(AREA) AS num FROM t_hotel GROUP BY AREA ORDER BY COUNT(AREA) DESC")
    public List<AreaChart> groupByArea() throws Exception;

    @Select("SELECT order_source AS source ,COUNT(order_source) AS  num FROM t_order GROUP BY order_source ORDER BY num DESC")
    public List<SourceChart> groupBySource();

}
