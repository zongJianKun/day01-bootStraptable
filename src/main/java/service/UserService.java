package service;

import com.alibaba.fastjson.JSONObject;
import domain.User;
import mapper.UserMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import service.impl.IUserService;
import java.util.List;

@Service
@Transactional(isolation=Isolation.READ_COMMITTED,propagation=Propagation.REQUIRED)
public class UserService implements IUserService {
    @Autowired
    UserMapper um;

    @Override
    public void add(User user) {
        try {

            um.insert(user);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }

    @Override
    public void remove(User user) {
        try {
            um.delete(user);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }

    @Override
    public void modify(User user) {
        try {
            um.update(user);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }

    @Override
    @Transactional(readOnly=true)
    public JSONObject findPageUser(JSONObject jsonObject) {
        List<User> users = null;
        try {
            users = um.selectPageUser(jsonObject);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        int total = 0;
        try {
            total = um.selectCountUser(jsonObject);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        jsonObject.put("total",total);
        jsonObject.put("rows", users);

        return jsonObject;
    }

    @Override
    @Transactional(readOnly=true)
    public int findCountUser(JSONObject jsonObject) {
        int i = 0;
        try {
            i = um.selectCountUser(jsonObject);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return i;
    }

    @Override
    @Transactional(readOnly=true)
    public User findById(User user) {
        user = um.selectById(user);

        return user;
    }

}
