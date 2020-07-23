package com.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Doctor {
    private Integer id;//医生编号
    private String name;//医生姓名
    private String password;
    private Integer kid;//医生所属的科室
    private String zc;//医生的职称
    private String bz;//头像

    private Ks ks;


}
