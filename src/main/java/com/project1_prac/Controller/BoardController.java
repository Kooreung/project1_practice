package com.project1_prac.Controller;

import com.project1_prac.Service.BoardService;
import com.project1_prac.domain.RestaurantBoard;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
        RestaurantBoard restaurantBoard = boardService.get(id);
        model.addAttribute("restaurantBoard", restaurantBoard);
        return "board/view";
    }

    @GetMapping("/")
    public String home(@RequestParam(value = "page", defaultValue = "1") Integer page, Model model) {
        model.addAllAttributes(boardService.list(page));
        return "board/home";
    }

    @GetMapping("/delete")
    public String delete(Integer id) {
        boardService.delete(id);
        return "redirect:/";
    }

    @GetMapping("/edit")
    public String edit(Integer id, Model model) {
        model.addAttribute("restaurantBoard", boardService.get(id));
        return "board/edit";
    }

    @PostMapping("/edit")
    public String editPost(RestaurantBoard restaurantBoard, RedirectAttributes rttr) {
        boardService.update(restaurantBoard);

        rttr.addAttribute("id", restaurantBoard.getId());
        return "redirect:/board";
    }
}
