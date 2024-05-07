package com.project1_prac.Service;

import com.project1_prac.Mapper.BoardMapper;
import com.project1_prac.domain.RestaurantBoard;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@RequiredArgsConstructor
@Transactional(rollbackFor = Exception.class)
public class BoardService {
    private final BoardMapper boardMapper;

    public void add(RestaurantBoard restaurantBoard) {
        boardMapper.insert(restaurantBoard);
    }

    public RestaurantBoard get(Integer id) {
        return boardMapper.selectById(id);
    }

    public List<RestaurantBoard> list() {
        return boardMapper.selectAll();
    }
}
