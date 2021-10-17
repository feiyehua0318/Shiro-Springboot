package com.fyking.config;


import com.fyking.realm.AccountRealm;
import org.apache.shiro.spring.web.ShiroFilterFactoryBean;
import org.apache.shiro.web.mgt.DefaultWebSecurityManager;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.HashMap;
import java.util.Map;

@Configuration
public class ShiroConfig {

    @Bean
    public ShiroFilterFactoryBean shiroFilterFactoryBean(@Qualifier("defaultWebSecurityManager") DefaultWebSecurityManager SecurityManager){
        ShiroFilterFactoryBean factoryBean = new ShiroFilterFactoryBean();
        factoryBean.setSecurityManager(SecurityManager);
        //权限设置
        Map<String,String> map = new HashMap<>();

        map.put("/main","authc");
        map.put("/manage","perms[manage]");
        map.put("/administrator","roles[administrator]");
        //设置login页面
        factoryBean.setLoginUrl("/login");
        //设置自动的权限过滤
        factoryBean.setFilterChainDefinitionMap(map);
        //设置 未授权访问的页面
        factoryBean.setUnauthorizedUrl("/unauth");
        return factoryBean;

    }


    @Bean
    public DefaultWebSecurityManager defaultWebSecurityManager(@Qualifier("accountRealm") AccountRealm accountRealm){
        DefaultWebSecurityManager manager = new DefaultWebSecurityManager();
        manager.setRealm(accountRealm);
        return manager;
    }


    @Bean
    public AccountRealm accountRealm(){
        return new AccountRealm();
    }
}
