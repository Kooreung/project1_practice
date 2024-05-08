package com.project1_prac.Service;

import com.project1_prac.Mapper.MemberMapper;
import com.project1_prac.domain.Member;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class MemberService {
    private final MemberMapper memberMapper;

    public void signup(Member member) {

        memberMapper.insert(member);
    }

    public String emailCheck(String email) {
        Member member = memberMapper.selectByEmail(email);
        if (member == null) {
            return "사용 가능한 이메일입니다.";
        } else {
            return "이미 사용 중인 이메일입니다.";
        }
    }

    public String nickNameCheck(String nickName) {
        Member member = memberMapper.selectByNickName(nickName);
        if (member == null) {
            return "사용 가능한 닉네임입니다.";
        } else {
            return "이미 사용 중인 닉네임입니다.";
        }
    }
}
