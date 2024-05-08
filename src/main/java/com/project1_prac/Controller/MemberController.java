package com.project1_prac.Controller;

import com.project1_prac.Service.MemberService;
import com.project1_prac.domain.Member;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequiredArgsConstructor
@RequestMapping("member")
public class MemberController {
    private final MemberService memberService;

    @GetMapping("signup")
    public void signup() {
    }

    @PostMapping("signup")
    public String signupPost(Member member) {
        memberService.signup(member);
        return "redirect:/";
    }

    @GetMapping("email")
    @ResponseBody
    public String emailCheck(String email) {
        String message = memberService.emailCheck(email);
        return message;
    }

    @GetMapping("nickName")
    @ResponseBody
    public String nicknameCheck(String nickName) {
        String message = memberService.nickNameCheck(nickName);
        return message;
    }

    @GetMapping("list")
    public void list(Model model) {
        model.addAttribute("memberList", memberService.list());

    }
}
