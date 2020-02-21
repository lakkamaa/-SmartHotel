package com.wasu.hotel.service.impl;

import com.wasu.hotel.dao.IChartsDao;
import com.wasu.hotel.domain.AreaChart;
import com.wasu.hotel.domain.Chart;
import com.wasu.hotel.domain.LineChartDayly;
import com.wasu.hotel.domain.SourceChart;
import com.wasu.hotel.service.IChartsService;
import com.wasu.hotel.service.utils.ChartUtil;
import com.wasu.hotel.utils.ChartPack;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collections;
import java.util.List;


@Service
@Transactional
public class ChartsServiceImpl implements IChartsService {

    @Autowired
    private IChartsDao chartsDao;

    @Override
    public List<LineChartDayly> lineChartDayly() throws Exception{
        List<LineChartDayly> res = chartsDao.lineChartDayly();
        Collections.reverse(res);
        return res;
    }

    @Override
    public ChartPack chartChange(List<? extends Chart> chartList) throws Exception {
        ChartUtil chartUtil = new ChartUtil();
        return chartUtil.row2Line(chartList);
    }

    @Override
    public List<SourceChart> groupBySource() {
        return chartsDao.groupBySource();
    }

    @Override
    public List<AreaChart> groupByArea() throws Exception {
        return chartsDao.groupByArea() ;
    }

}
