package service.impl;

import com.alibaba.fastjson.JSONObject;
import domain.User;

public interface IUserService {
    //添加用户信息
    public void add(User user) throws Exception;

    //删除用户信息
    public void remove(User user) throws Exception;

    //修改用户信息
    public void modify(User user) throws Exception;

    //查询每页用户
    public JSONObject findPageUser(JSONObject jsonObject) throws Exception;

    //查询总共多少条数据
    public int findCountUser(JSONObject jsonObject)throws Exception;

    public User findById(User user);


}
