package com.larissa2A.petshop;

import org.springframework.context.annotation.Bean;

import org.springframework.context.annotation.Configuration;

import org.springframework.security.config.annotation.web.builders.HttpSecurity;

import org.springframework.security.web.SecurityFilterChain;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;



@Configuration

public class SecurityConfig {



    @Bean

    public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {



        http

            // desativa csrf (necessário para APIs REST)

            .csrf(csrf -> csrf.disable())



            // libera CORS

            .cors(cors -> {})



            // libera endpoints

            .authorizeHttpRequests(auth -> auth

                .requestMatchers("/api/**").permitAll() // libera tudo da API

                .anyRequest().authenticated()

            );



        return http.build();

    }



    // (opcional, mas padrão)

    @Bean

    public BCryptPasswordEncoder passwordEncoder() {

        return new BCryptPasswordEncoder();

    }

}