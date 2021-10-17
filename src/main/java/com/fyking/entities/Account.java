package com.fyking.entities;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Account {

    private Integer id;
    private String username;
    private String password;
    private String perms;
    private String role;
}
