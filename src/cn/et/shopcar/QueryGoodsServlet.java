package cn.et.shopcar;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.et.shopDBUtils.DBUtils;

/**
 * Servlet implementation class QueryGoodsServlet
 */
public class QueryGoodsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QueryGoodsServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
		response.getWriter().append("Served at: ").append(request.getContextPath());
		out.println("<form>"+
			"<input type=\"text\" name=\"goodName\"/><input type=\"submit\" value=\"����\"/>"+
			"</form>");
		
		out.println("<table style=\"width:100%\">"+
			"<tr>"+
				"<th>��ʾͼƬ</th><th>��Ʒ����</th><th>��Ʒ����</th><th>��Ʒλ��</th><th></th>"+
			"</tr>");
		
		// ��ѯ�߼�
		String sql="select * from goods";
		try {
			PreparedStatement sta=conn.prepareStatement(sql);
			ResultSet rs=sta.executeQuery();
			while(rs.next()){
				String name=rs.getString("NAME");
				String imagePath=rs.getString("IMAGEPATH");
				double price=rs.getDouble("PRICE");
				String stock=rs.getString("STOCK");
				out.println("<tr>"+
						"<td><img src="+request.getContextPath()+imagePath+"/></td><td>"+name+"</td><td>"+price+"</td><td>"+stock+"</td><td>����</td>"+
						"</tr>");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		out.println("</table>");
		out.flush();
		out.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		this.doGet(request, response);
	}

	private Connection conn=null;
	@Override
	/**
	 * �ر�����
	 */
	public void destroy() {
		try {
			conn.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	@Override
	/**
	 * ��������
	 */
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		try {
			conn=DBUtils.getConnection();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	

}
