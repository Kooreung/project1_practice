package com.project1_prac.Controller;

import com.project1_prac.Service.BoardService;
import com.project1_prac.domain.RestaurantBoard;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
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

    @GetMapping("/board")
    public String view(Integer id, Model model) {
        System.out.println(id);
        RestaurantBoard restaurantBoard = boardService.get(id);
        System.out.println(restaurantBoard);
        model.addAttribute("restaurantBoard", restaurantBoard);
        return "board/view";
    }

    @GetMapping("/")
    public String home(Model model) {
        model.addAllAttributes(boardService.list());
        return "board/home";
    }
}
