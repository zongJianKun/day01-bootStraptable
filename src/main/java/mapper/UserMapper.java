package mapper;

import com.alibaba.fastjson.JSONObject;
import domain.User;
import java.util.List;

public interface UserMapper {
	//添加用户信息
	public void insert(User user) throws Exception;

	//删除用户信息
	public void delete(User user) throws Exception;

	//修改用户信息
	public void update(User user) throws Exception;

	//查询每页用户
	public List<User> selectPageUser(JSONObject jsonObject) throws Exception;

	//查询总共多少条数据
	public int selectCountUser(JSONObject jsonObject)throws Exception;

	//分页查询所需数据:
	//now_page   现在是第几页
	//count_page 每页几条数据
	//sum_page   总共几页
	//sum_user   总共多少条数据
	//user_page  每页用户数据集合

	//根据id查询用户信息
	public User selectById(User user);
}
	
