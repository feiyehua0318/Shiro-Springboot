package com.fyking.mapper;

import com.fyking.entities.Account;
import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;

@SpringBootTest
class AccountMapperTest {

    @Resource
    AccountMapper accountMapper;

    @Test
    public void test(){
        for (Account account : accountMapper.selectList(null)) {
            System.out.println("account = " + account);
        }
    }
}