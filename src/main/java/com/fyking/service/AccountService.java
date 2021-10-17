package com.fyking.service;

import com.fyking.entities.Account;

public interface AccountService {

    public Account findByUsername(String username);
}
