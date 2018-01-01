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
	 * jdbc�ķ�װ��
	 */
	// ��һ����̬������ȡ��Դ�ļ���
	static Properties p=new Properties();
	static{
		// DBUtils����ͬ���µ�properties��Դ�ļ���  �� /  
		// �����ͬһ���¾Ͳ��ü�
		InputStream is=DBUtils.class.getResourceAsStream("jdbc.properties");
		try {
			p.load(is);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	/**
	 * ��ȡ����
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
		return conn;   //��������
	}
}
