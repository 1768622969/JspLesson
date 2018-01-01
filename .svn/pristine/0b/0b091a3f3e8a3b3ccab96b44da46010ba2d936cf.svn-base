package controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DBUtils;
import model.PageTools;
import model.myuserQuery;

/**
 * Servlet implementation class ServletDemo
 */
public class myuserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public myuserServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    myuserQuery mq=new myuserQuery();
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			String name=request.getParameter("ename");
			String curPage=request.getParameter("curPage");
			Integer curPageInt=1;
			if(curPage!=null){
				curPageInt=Integer.parseInt(curPage);
			}
			PageTools tableList = mq.getTableListPager(name,curPageInt);
	//		List<Map> tableList = mq.getTableList();
			request.setAttribute("tableList", tableList);
			request.getRequestDispatcher("/lesson08/View.jsp").forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
