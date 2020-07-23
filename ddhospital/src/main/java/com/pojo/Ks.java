package com.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
//科室
public class Ks {
    private Integer id;//科室编号
    private String name;//科室名称
    private String bz;//备注
    private List<Doctor> doctors;

}
