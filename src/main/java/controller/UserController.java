package controller;

import com.alibaba.fastjson.JSONObject;
import domain.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import service.impl.IUserService;


@Controller
public class UserController {
    @Autowired
    private IUserService us;

    //初次登录高级一点的写法,具有有点restful风格
    @RequestMapping(value="/",method=RequestMethod.GET)
    public String index(){

        return "index";
    }
    @RequestMapping(value="/{path}",method=RequestMethod.GET)
    public String tableData(@PathVariable String path){

        return path;
    }

    @ResponseBody
    @RequestMapping(value="/users",method=RequestMethod.POST,produces="application/json;charset=UTF-8")
    public Object jsonUsers(@RequestBody JSONObject jsonObject) throws Exception{
        jsonObject = us.findPageUser(jsonObject);

        return jsonObject;
    }

    //添加用户
    @RequestMapping("/add")
    public String add(User user) throws Exception{
        us.add(user);

        return "redirect:/table-data-table";
    }

    //修改用户数据
    @RequestMapping("/modify")
    public String modify(User user) throws Exception{
        us.modify(user);
        return "redirect:/table-data-table";
    }

    //删除用户
    @RequestMapping("/remove")
    public String remove(User user) throws Exception{
        us.remove(user);

        return "redirect:/table-data-table";
    }

    //回显数据
    @RequestMapping("/findUserById")
    public @ResponseBody User findUserById(User user){
        user = us.findById(user);

        return user;
    }
}















