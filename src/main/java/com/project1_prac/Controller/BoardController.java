package com.project1_prac.Controller;

import com.project1_prac.Service.BoardService;
import com.project1_prac.domain.RestaurantBoard;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequiredArgsConstructor
public class BoardController {

    private final BoardService boardService;

    @GetMapping("/add")
    public String add() {
        return "board/add";
    }

    @PostMapping("/add")
    public String addPost(RestaurantBoard restaurantBoard, RedirectAttributes rttr) {
        boardService.add(restaurantBoard);

        rttr.addAttribute("id", restaurantBoard.getId());
        return "redirect:/board";
    }
}
