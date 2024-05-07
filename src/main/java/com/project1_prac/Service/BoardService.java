package com.project1_prac.Service;

import com.project1_prac.Mapper.BoardMapper;
import com.project1_prac.domain.RestaurantBoard;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

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

    public Map<String, Object> list(Integer page) {
        int offset = (page - 1) * 10;
        int numberOfBoard = boardMapper.countAll();
        int lastPage = (numberOfBoard - 1) / 10 + 1;
        int endPage = (page - 1) / 10 * 10 + 10;
        int beginPage = endPage - 9;

        endPage = Math.min(endPage, lastPage);

        int prevPage = beginPage - 10;
        int nextPage = beginPage + 10;

        return Map.of("restaurantBoardList", boardMapper.selectAllByPage(offset),
                "pageInfo", Map.of("lastPage", lastPage,
                        "endPage", endPage,
                        "beginPage", beginPage,
                        "prevPage", prevPage,
                        "nextPage", nextPage,
                        "currentPage", page
                ));
    }

    public void delete(Integer id) {
        boardMapper.deleteById(id);
    }
}
