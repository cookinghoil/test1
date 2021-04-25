package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import beans.FilenamesBean;

public class uploadDB {

	private DBConnectionMgr pool=null;
	private Connection con=null;
	private PreparedStatement pstmt=null; 
	private ResultSet rs=null; 
	private String sql=""; 
	
	public uploadDB() {
		try {
			pool=DBConnectionMgr.getInstance();
			System.out.println("pool : "+pool);
		} catch (Exception e) {
			System.out.println("uploadDB() 메소드 에러 : "+e);
		}
	}
	
	public int insertTest(List list) {
		int result =0;
		int num =0;
		try {
			con = pool.getConnection();
			//String sql = "insert into test (name) values (?)";
			//pstmt = con.prepareStatement(sql);
			//pstmt.setString(1, text);
			//result = pstmt.executeUpdate();
			if(list.size()>1) {
				sql="select max(p_no) as maxLevel from p_info";
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					num = rs.getInt("maxLevel");
				}
				System.out.println("maxLevel : " + num);
				
				sql = "insert into p_imgbox (p_no,p_img) values (?,?)";
				for(int i=0;i<list.size();i++) {
				System.out.println("list====>"+(String) list.get(i));
				
				pstmt = con.prepareStatement(sql);
				pstmt.setInt(1, num);
				pstmt.setString(2, (String) list.get(i));
				result = pstmt.executeUpdate();
				}
			}
		}catch(Exception e) {
			System.out.println("insertTest() 메소드 에러 :"+e);
		}finally {
			pool.freeConnection(con,pstmt,rs);
		}
		
		return result;
	}
	
	public List getAll() {
		List data = null;
		List imgList = null;
		ResultSet rs2 = null;
		PreparedStatement pstmt2=null; 
		String sql2=""; 
		int p_no = 0;
		try {
			con = pool.getConnection();
			sql = "select p_no from p_imgbox";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			data = new ArrayList();
			while(rs.next()) {
				if(p_no<rs.getInt("p_no")) {
					System.out.println("rs.getInt(\"p_no\")=>"+rs.getInt("p_no"));
					FilenamesBean bean = new FilenamesBean();
					
					p_no=rs.getInt("p_no");
					bean.setP_no(p_no);
					System.out.println("p_no===>"+p_no);
					sql2 = "select * from p_imgbox where p_no="+p_no;
					pstmt2 = con.prepareStatement(sql2);
					System.out.println("ok22");
					rs2 = pstmt2.executeQuery();
					
					imgList = new ArrayList();
					
					while(rs2.next()) {
						System.out.println(rs2.getString("p_img"));
						String sub = rs2.getString("p_img");
						imgList.add(sub);
					}
					bean.setP_img(imgList);
					data.add(bean);
				}
			}
		} catch(Exception e) {
			System.out.println("getAll() 메소드 에러 : "+e);
		} finally {
			pool.freeConnection(con,pstmt,rs);
		}
		return data;
	}
}
