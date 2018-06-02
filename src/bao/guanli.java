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
			// �������ݿ�������ע�ᵽ����������
			Class.forName("com.mysql.jdbc.Driver");
			// ���ݿ������ַ���
			String url = "jdbc:mysql://localhost:3306/zhuce1";
			// ���ݿ��û���
			String username = "root";
			// ���ݿ�����
			String password = "123123";
			// ����Connection����
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/zhuce1","root","123123");
			System.out.println("db conn.");
			// ��ȡStatement
			Statement stmt = conn.createStatement();
			// ���ͼ����Ϣ��SQL���
			String sql = "select * from zhuce";
			// ִ�в�ѯ
			ResultSet rs = stmt.executeQuery(sql);
			// ʵ����List����
			List<generator> list = new ArrayList<generator>();
			// �жϹ������ƶ������ж��Ƿ���Ч
			while(rs.next()){
				// ʵ����Book����
				generator generator1 = new generator();
				// ��id���Ը�ֵ
				generator1.settelephone(rs.getString("telephone"));
				// ��name���Ը�ֵ
				generator1.setusername(rs.getString("username"));
				// ��price���Ը�ֵ
				generator1.setpassword(rs.getString("password"));
				// ��bookCount���Ը�ֵ
				generator1.setemail(rs.getString("email"));
				// ��author���Ը�ֵ
				
				// ��ͼ�������ӵ�������
				list.add(generator1);
			}
			// ��ͼ�鼯�Ϸ��õ�request֮��
			request.setAttribute("list", list);
			rs.close();		// �ر�ResultSet
			stmt.close();	// �ر�Statement
			conn.close();	// �ر�Connection
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		// ����ת����book_list.jsp
		request.getRequestDispatcher("guanliyuan_list.jsp").forward(request, response);
	}
}