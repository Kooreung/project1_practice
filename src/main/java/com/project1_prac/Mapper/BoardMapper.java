package com.project1_prac.Mapper;

import com.project1_prac.domain.RestaurantBoard;
import org.apache.ibatis.annotations.*;

import java.util.List;

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

    @Select("""
            SELECT restaurantBoard.id,
                   restaurantBoard.restaurant_name,
                   restaurantBoard.food_name,
                   restaurantBoard.price,
                   restaurantBoard.score,
                   restaurantBoard.member_id = member.id
            FROM restaurantBoard
            LEFT JOIN member ON restaurantBoard.member_id = member.id
            WHERE restaurantBoard.id = #{id}
            """)
    RestaurantBoard selectById(Integer id);

    @Select("""
            SELECT *
            FROM restaurantBoard
            ORDER BY id DESC
            """)
    List<RestaurantBoard> selectAll();

    @Select("""
            SELECT restaurantBoard.id,
                   restaurantBoard.restaurant_name,
                   restaurantBoard.food_name,
                   restaurantBoard.price,
                   restaurantBoard.score
            FROM restaurantBoard
            LEFT JOIN member ON restaurantBoard.member_id = member.id
            ORDER BY id DESC
            LIMIT #{offset}, 10
            """)
    List<RestaurantBoard> selectAllByPage(int offset);

    @Select("""
            SELECT COUNT(*) FROM restaurantBoard
            """)
    int countAll();

    @Delete("""
            DELETE FROM restaurantBoard
            WHERE id = #{id}
            """)
    int deleteById(Integer id);
}
