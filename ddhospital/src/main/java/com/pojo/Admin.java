package com.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
//管理员
public class Admin {
    private Integer id;
    private String name;
    private String password;
    private String bz;
}
