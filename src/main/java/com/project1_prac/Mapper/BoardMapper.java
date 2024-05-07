package com.project1_prac.Mapper;

import com.project1_prac.domain.RestaurantBoard;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;

@Mapper
public interface BoardMapper {

    @Insert("""
            INSERT INTO restaurantBoard (
                    restaurant_name,
                    food_name,
                    price,
                    score,
                    content)
            VALUES (#{restaurantName},#{foodName},#{price},#{score},#{content})
            """)
    @Options(useGeneratedKeys = true, keyProperty = "id")
    int insert(RestaurantBoard restaurantBoard);
}
