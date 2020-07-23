package com.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Data
@AllArgsConstructor
@NoArgsConstructor
//患者类
public class Patient {
    private Integer id;//患者编号
    private String name;//患者名字
    private String password;
    private String sex;//患者性别
    private Integer age;//年龄
    private String lxfs;//联系方式
    private String sfz;//身份证


}
