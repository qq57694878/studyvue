package com.ljl.vuehttp.demo.controller;

import com.ljl.vuehttp.core.common.RestResult;
import com.ljl.vuehttp.core.simple.model.Authority;
import com.ljl.vuehttp.core.simple.model.User;
import com.ljl.vuehttp.core.simple.repository.UserRepository;
import com.ljl.vuehttp.demo.model.Article;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
public class UserController {
    @Autowired
    private UserRepository userRepository;

    @RequestMapping("user/info")
    public RestResult getUserInfo(){
       // UserDetails userDetails = (UserDetails) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        String username = auth.getName(); //get logged in username
        User user = userRepository.findByUsername(username);
        Map<String,Object> r = new HashMap<String,Object>();
        List<Authority> authrities = user.getAuthorities();
        if(authrities!=null){
            List<String> roles = new ArrayList<String>();
            for(Authority a:authrities){
                roles.add(a.getName().name());
            }
            r.put("roles",roles);
        }
        r.put("name",username);
        return new RestResult(r);
    }
    @RequestMapping(value = "user/logout")
    public ResponseEntity<?> logout()
    {
        SecurityContextHolder.getContext().setAuthentication(null);
        return ResponseEntity.ok(new RestResult(""));
    }
}
