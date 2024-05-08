package com.project1_prac.domain;

import lombok.Data;

import java.time.LocalDateTime;

@Data
public class RestaurantBoard {
    private Integer id;
    private Integer memberId;
    private String restaurantName;
    private String foodName;
    private Integer price;
    private String score;
    private String content;
    private LocalDateTime inserted;
}
