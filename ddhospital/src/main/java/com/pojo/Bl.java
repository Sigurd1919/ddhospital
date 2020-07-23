package com.pojo;

import com.alibaba.fastjson.annotation.JSONField;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
//病例的类
public class Bl {
    private Integer id;//病例的id
    private Integer pid;//患者的id
    private Integer did;//医生的id
    @JSONField(format = "yyyy/MM/dd")
    private Date zdsj;//治疗时间
    private String zdnr;//诊断nrir
    private String zdjg;//诊断结果
    private Integer state;
    private Double jiage;
    private  Integer flag;

    private String bz;//备注
    private Patient patient;


}
