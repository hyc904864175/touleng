package bao;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/guanli")
public class guanli extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			// 加载数据库驱动，注册到驱动管理器
			Class.forName("com.mysql.jdbc.Driver");
			// 数据库连接字符串
			String url = "jdbc:mysql://localhost:3306/zhuce1";
			// 数据库用户名
			String username = "root";
			// 数据库密码
			String password = "123123";
			// 创建Connection连接
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/zhuce1","root","123123");
			System.out.println("db conn.");
			// 获取Statement
			Statement stmt = conn.createStatement();
			// 添加图书信息的SQL语句
			String sql = "select * from zhuce";
			// 执行查询
			ResultSet rs = stmt.executeQuery(sql);
			// 实例化List对象
			List<generator> list = new ArrayList<generator>();
			// 判断光标向后移动，并判断是否有效
			while(rs.next()){
				// 实例化Book对象
				generator generator1 = new generator();
				// 对id属性赋值
				generator1.settelephone(rs.getString("telephone"));
				// 对name属性赋值
				generator1.setusername(rs.getString("username"));
				// 对price属性赋值
				generator1.setpassword(rs.getString("password"));
				// 对bookCount属性赋值
				generator1.setemail(rs.getString("email"));
				// 对author属性赋值
				
				// 将图书对象添加到集合中
				list.add(generator1);
			}
			// 将图书集合放置到request之中
			request.setAttribute("list", list);
			rs.close();		// 关闭ResultSet
			stmt.close();	// 关闭Statement
			conn.close();	// 关闭Connection
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// 请求转发到book_list.jsp
		request.getRequestDispatcher("guanliyuan_list.jsp").forward(request, response);
	}
}