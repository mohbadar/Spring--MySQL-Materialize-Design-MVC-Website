package com.application.service;

import com.application.model.CustomUserDetail;
import com.application.model.User;
import com.application.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.Optional;

@Service
public class CustomUserDetailService implements UserDetailsService {
    @Autowired
    private UserRepository userRepository;
    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        Optional<User> optionalUser =  userRepository.findByUserName(username);

        optionalUser
                .orElseThrow(()-> new UsernameNotFoundException("UserName Not Found"));

        return optionalUser
                .map(CustomUserDetail::new).get();

    }

}
