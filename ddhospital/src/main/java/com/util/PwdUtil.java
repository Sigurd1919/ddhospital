package com.util;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class PwdUtil {

    //账号
    private String username;
    //旧密码
    private String oldPwd;
    //新密码
    private String newPwd;
    //身份
    private int status;
}
