package com.glc.loginregister.service;

import com.glc.loginregister.entity.Result;
import com.glc.loginregister.entity.User;
import com.glc.loginregister.mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserService {

    @Autowired
    private UserMapper userMapper;


    /**
     * 注册
     * @param user
     * @return
     */
    public Result rgister(User user){
        Result result=new Result();
        result.setSuccess(false);
        result.setDetail(null);
        try {
            User userByName = userMapper.findUserByName(user.getUsername());
            if(userByName!=null){
                //如果查询到 说明存在
                result.setMsg("用户名存在");
            }else {
                userMapper.register(user);
                result.setMsg("注册成功");
                result.setSuccess(true);
                result.setDetail(user);
            }
        }catch (Exception e){
            result.setMsg(e.getMessage());
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 登录
     */
    public Result login(User user){
        Result result=new Result();
        result.setSuccess(false);
        result.setDetail(null);
        try {
            Long userId = userMapper.login(user);
            if(userId==null){
                result.setMsg("用户名或密码错误");
            }else {
                result.setMsg("登录成功");
                result.setSuccess(true);
                user.setId(userId);
                User userById = userMapper.findUserById(userId);
                result.setDetail(userById);
            }

        }catch (Exception e){
            result.setMsg(e.getMessage());
            e.printStackTrace();
        }
        return result;
    }

    /**
     * 获取用户数据
     * @param user
     * @return
     */

    public Result getByname(User user){

        Result result=new Result();
        result.setSuccess(false);
        result.setDetail(null);
        try {
//            Long userId = userMapper.login(user);
                result.setMsg("成功");
                result.setSuccess(true);
//                user.setId(userId);
                User userByName = userMapper.findUserByName(user.getUsername());
            ArrayList<User> users = new ArrayList<>();
            users.add(userByName);
            result.setDetail(users);


        }catch (Exception e){
            result.setMsg(e.getMessage());
            e.printStackTrace();
        }


        return result;
    }


    public Result update(User user){
        Result result=new Result();
        result.setSuccess(false);
        result.setDetail(null);
        userMapper.update(user);
        try {
            result.setMsg("成功");
            result.setSuccess(true);
        }catch (Exception e){
            result.setMsg(e.getMessage());
            e.printStackTrace();
        }

        return result;

    }


}
