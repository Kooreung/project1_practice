package com.project1_prac.domain;

import lombok.Data;

import java.time.LocalDate;

@Data
public class RestaurantBoard {
    private Integer id;
    private Integer memberId;
    private String restaurantName;
    private String foodName;
    private Integer price;
    private String score;
    private String content;
    private String writer;
    private LocalDate inserted;
}
