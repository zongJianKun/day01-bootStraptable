package test;

import domain.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import service.impl.IUserService;

@ContextConfiguration(value = "classpath:spring/applicationContext.xml")
@RunWith(value = SpringJUnit4ClassRunner.class)
public class UserTest {
	@Autowired
	IUserService us;
	
	// 添加用户信息
	@Test
	public void add() throws Exception{
		User user = new User();
		user.setAddress("hanghzou");
		user.setEmail("11111111");
		user.setNickname("jdii");
		user.setPhone("000000");
		user.setState(1);
		user.setUsername("王子");
		
		us.add(user);
	}

	// 删除用户信息
	@Test
	public void remove() throws Exception {
	
	}

	// 修改用户信息
	@Test
	public void modify() throws Exception {
		User user = new User();
		user.setPhone("1234567789");
		user.setId(4);
		
		us.modify(user);
	}

	// 查询每页用户
	@Test
	public void findPageUser() throws Exception {

	}

	// 查询总共多少条数据
	@Test
	public void findCountUser() {
		
	}

}
