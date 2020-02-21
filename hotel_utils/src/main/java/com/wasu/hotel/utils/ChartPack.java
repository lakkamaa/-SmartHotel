package com.wasu.hotel.utils;

import java.util.List;

public class ChartPack {

    private List<Integer> value;
    private List<String> key;

    public List<Integer> getValue() {
        return value;
    }

    public void setValue(List<Integer> value) {
        this.value = value;
    }

    public List<String> getKey() {
        return key;
    }

    public void setKey(List<String> key) {
        this.key = key;
    }


    public ChartPack() {
    }

    public ChartPack(List<Integer> value, List<String> key) {
        this.value = value;
        this.key = key;
    }
}
