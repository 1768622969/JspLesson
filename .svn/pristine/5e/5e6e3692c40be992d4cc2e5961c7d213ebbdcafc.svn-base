package cn.et.query;

import java.util.List;
import java.util.Map;

import model.DBUtils;
import model.PageTools;

public class myuserQuery {
	public String getTable() throws Exception{
		StringBuffer sb=new StringBuffer();
		List<Map> result=DBUtils.query("select * from myuser");
		sb.append("<table>");
		sb.append("<tr><th>username</th><th>password</th></tr>");
		for(Map map:result){
			sb.append("<tr><td>"+map.get("username")+"</td><td>"+map.get("password")+"</td></tr>");
		}
		sb.append("</table>");
		return sb.toString();
	}
	public List<Map> getTableList() throws Exception{
		StringBuffer sb=new StringBuffer();
	    List<Map> result=DBUtils.query("select * from myuser");
	    return result;
	}
}
