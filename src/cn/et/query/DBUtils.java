package cn.et.query;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

import org.junit.Test;

public class DBUtils {
	public static void main(String[] args) throws Exception {
		getConnection();
		List<Map> result=query("select * from myuser");
		System.out.println(result);
	}
	/**
	 * jdbc的封装类
	 */
	// 用一个静态快来读取资源文件类
	static Properties p=new Properties();
	static{
		// DBUtils读不同包下的properties资源文件类  加 /  
		// 如果在同一包下就不用加
		InputStream is=DBUtils.class.getResourceAsStream("jdbc.properties");
		try {
			p.load(is);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	/**
	 * 获取连接
	 * @throws Exception 
	 * 
	 */
	@Test
	public static Connection getConnection() throws Exception{
		String url=p.getProperty("url2");
		String driverClass=p.getProperty("driverClass2");
		String uname=p.getProperty("username2");
		String password=p.getProperty("password2");
		Class.forName(driverClass);
		Connection conn=DriverManager.getConnection(url, uname, password);
		return conn;   //返回连接
	}
	/**
	 * 行和列的结构  eg：
	 * username  password
	 * 		hjh            hjh
	 * 		hhx			 hhx
	 * 
	 * java结构
	 * 多行List list=new ArrayList  多个行可以组成一个集合 length=2
	 * 1行
	 * 		Map map=new HashMap( );
	 * 		map.put("username",hjh);
	 * 		map.put("password",hjh);
	 * 
	 * 2行
	 * 		Map map=new HashMap( );
	 * 		map1.put("username",hhx);
	 * 		map1.put("password",hhx);
	 * 
	 * List list=new ArrayList
	 * list.add(map);
	 * list.add(map1);
	 * @param sql
	 * @return
	 * @throws Exception 
	 */
	public static List<Map> query(String sql) throws Exception{
		Connection conn=getConnection();
		PreparedStatement pst=conn.prepareStatement(sql);
		ResultSet rs=pst.executeQuery();
		ResultSetMetaData rsmd=rs.getMetaData();
		List list=new ArrayList();
		// 获取列的个数
		int columnCount=rsmd.getColumnCount();
		while(rs.next()){
			Map map=new HashMap();
			for(int i=1; i<=columnCount; i++){
				String colName=rsmd.getColumnName(i);
				String colValue=rs.getString(i);
				map.put(colName, colValue);
			}
			list.add(map);
		}
		return list;
	}
}
