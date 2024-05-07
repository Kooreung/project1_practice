package com.project1_prac.domain;

import lombok.Data;

@Data
public class Member {
    private Integer id;
    private String email;
    private String password;
    private String nickName;
}
