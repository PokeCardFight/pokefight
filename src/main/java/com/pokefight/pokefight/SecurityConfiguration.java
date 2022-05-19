package com.pokefight.pokefight;

import com.pokefight.pokefight.services.UserDetailsLoader;
import org.springframework.context.annotation.*;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;

@Configuration
public class SecurityConfiguration extends WebSecurityConfigurerAdapter {

    private UserDetailsLoader usersLoader;

    public SecurityConfiguration(UserDetailsLoader usersLoader) {
        this.usersLoader = usersLoader;
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth
                .userDetailsService(usersLoader) // How to find users by their username
                .passwordEncoder(passwordEncoder()) // How to encode and verify passwords
        ;
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.formLogin()
                .loginPage("/")
                .loginProcessingUrl("/")
                .defaultSuccessUrl("/home/default", true)
                .failureUrl("/login.html?error=true")
                .permitAll()
            .and()
                .logout()
                .logoutSuccessUrl("/")
            .and()
                .authorizeRequests()
                .antMatchers("/","/about","/register", "/static/favicon.ico").permitAll()
                .antMatchers(
                        "/home",
                        "/home/{order}",
                        "/home/addItems",
                        "/contact",
                        "/profile",
                        "/battle",
                        "/battle/{cardId}/{pouchId}/", "/battle/remove/item",
                        "/battle/lost",
                        "/battle/won",
                        "/profile/edit",
                        "/search/api/getSearchResult").authenticated()
            .and()
                .csrf()
                .disable();
    }
}
