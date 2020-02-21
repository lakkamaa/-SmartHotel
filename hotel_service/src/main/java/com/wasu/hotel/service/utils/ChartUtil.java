package com.wasu.hotel.service.utils;

import com.wasu.hotel.domain.Chart;
import com.wasu.hotel.utils.ChartPack;

import java.util.ArrayList;
import java.util.List;

public class ChartUtil {

    public ChartPack row2Line(List< ? extends Chart> chartList){

        List<String> keys = new ArrayList<>();
        List<Integer> values = new ArrayList<>();

        for (Chart chart : chartList) {
            keys.add(chart.getKey());
            values.add(chart.getValue());
        }

        ChartPack chartPack = new ChartPack(values,keys);
        return chartPack;
    }
}
