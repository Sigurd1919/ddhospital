package com.pojo;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CH {
    private int id;
    private int mid;
    private Date chtime;
    private double num;
    private int state ;
}
