package com.wasu.hotel.service;

import com.wasu.hotel.domain.AreaChart;
import com.wasu.hotel.domain.Chart;
import com.wasu.hotel.domain.LineChartDayly;
import com.wasu.hotel.domain.SourceChart;
import com.wasu.hotel.utils.ChartPack;

import java.util.List;

public interface IChartsService {

    public List<LineChartDayly> lineChartDayly() throws Exception;

    public ChartPack chartChange(List<? extends Chart> chartList) throws Exception;

    public List<AreaChart> groupByArea() throws Exception;

    public List<SourceChart> groupBySource();

}
