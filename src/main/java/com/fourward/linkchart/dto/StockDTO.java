package com.fourward.linkchart.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class StockDTO {
    private String code;
    private String name;
    private String date;
    private String open;
    private String high;
    private String low;
    private String close;
    private String volume;
    private String start_date;
    private String end_date;
}