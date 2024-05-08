package com.project1_prac.Service;

import com.project1_prac.Mapper.MemberMapper;
import com.project1_prac.domain.Member;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class MemberService {
    private final MemberMapper memberMapper;

    public void signup(Member member) {

        memberMapper.insert(member);
    }

    public String emailCheck(String email) {
        Member member = memberMapper.selectByEmail(email);
        if (email.isEmpty() || email.isBlank() || !email.contains("@")) {
            return "잘못된 이메일 주소입니다.";
        } else if (member == null) {
            return "사용 가능한 이메일입니다.";
        } else {
            return "이미 사용 중인 이메일입니다.";
        }
    }

    public String nickNameCheck(String nickName) {
        Member member = memberMapper.selectByNickName(nickName);
        if (nickName.isEmpty() || nickName.isBlank()) {
            return "잘못된 닉네임입니다.";
        } else if (member == null) {
            return "사용 가능한 닉네임입니다.";
        } else {
            return "이미 사용 중인 닉네임입니다.";
        }
    }

    public List<Member> list() {
        return memberMapper.selectAll();
    }
}
