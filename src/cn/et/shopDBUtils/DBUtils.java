package cn.et.shopDBUtils;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

import org.junit.Test;

public class DBUtils {
	public static void main(String[] args) throws Exception {
		getConnection();
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
}
