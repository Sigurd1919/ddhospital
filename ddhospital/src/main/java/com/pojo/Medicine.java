package com.pojo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
//药材
public class Medicine {
    private Integer id;//药物的id
    private String name;//药物的名字
    private Double sl;//药物的数量
    private String lb;//药物的类别
    private Double jg;//药物的价格
    private String m_bz;//备注


}
