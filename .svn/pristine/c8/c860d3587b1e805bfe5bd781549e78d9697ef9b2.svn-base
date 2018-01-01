package model;

import java.util.List;
import java.util.Map;

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
	public Integer getTableListCount(String name) throws Exception{
		if(name==null){
			name="";
		}
		String sql="select count(rowid) as cr from emp where ename like '%"+name+"%'";
		List<Map> result=DBUtils.query(sql);
		return Integer.parseInt(result.get(0).get("CR").toString());
	}
	
	public PageTools getTableListPager(String name,Integer curPage) throws Exception{
		if(name==null){
			name="";
		}
		Integer totalCount=getTableListCount(name);
		PageTools pt=new 	PageTools(curPage,totalCount,null);
		
		StringBuffer sb=new StringBuffer();
		List<Map> result=DBUtils.query("select * from (select t.*,rownum rn from emp t where t.ename like '%"+name+"%') "
				+ "where rn>="+pt.getStartIndex()+" and rn<="+pt.getEndIndex());
		pt.setData(result);
		return pt;
	}
}
