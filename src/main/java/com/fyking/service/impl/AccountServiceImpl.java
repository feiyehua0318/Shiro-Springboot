package com.fyking.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.fyking.entities.Account;
import com.fyking.mapper.AccountMapper;
import com.fyking.service.AccountService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;


@Service
public class AccountServiceImpl implements AccountService {

    @Resource
    AccountMapper accountMapper;

    @Override
    public Account findByUsername(String username) {
        QueryWrapper queryWrapper = new QueryWrapper();
        queryWrapper.eq("username",username);
        return accountMapper.selectOne(queryWrapper);
    }
}
