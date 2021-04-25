package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import beans.UserBean;

public class UserDAO {

	private DBConnectionMgr pool=null;
	private Connection con=null;
	private PreparedStatement pstmt=null; 
	private ResultSet rs=null; 
	private String sql=""; 
	
	public UserDAO() {
		try {
			pool=DBConnectionMgr.getInstance();
			System.out.println("pool : "+pool);
		} catch (Exception e) {
			System.out.println("DB  UserDAO() : "+e);
		}
	}
	//userCheck() => loginProAction.java 김진아 - 1
	public int userCheck(String id,String password) {
		
		int result=0;
		try {
			con = pool.getConnection();
			sql = "select * from user where u_ID=? and u_pwd=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				result=1;
			}
		}catch(Exception e) {
			System.out.println("userCheck =>"+e);
		}
		return result;
	}
	
	//userInsert() => signUPProAction.java 김진아 - 2
	public int userInsert(UserBean user) {
		int result=0;
		try {
			con = pool.getConnection();
			sql="insert into user values(?,?,?,?,?,?,?)";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, user.getU_ID());
	        pstmt.setString(2, user.getU_pwd());
	        /*
	         * pstmt.setString(臾쇱쓬�몴 �닚�꽌, �뱾�뼱媛� �궡�슜);
	        pstmt.setString(3, user.getU_phone());
	        pstmt.setString(3, user.getU_email());
	        pstmt.setString(3, user.getU_gender());
	        */
	        pstmt.setString(3, user.getU_phone());
	        pstmt.setString(4, user.getU_email());
	        pstmt.setString(5, user.getU_gender());
	        pstmt.setString(6, user.getU_address());
	        pstmt.setString(7, user.getU_name());
	        /*�샇�씪異붽�*/
	        //pstmt.executeUpdate();�뒗 insert,update,delete �닔�뻾�썑 db�뿉 �쟻�슜�떆�궎�뒗 �뿭�븷!
	        // �쐞 sql臾몄옣 �꽦怨듭떆 1諛섑솚, �떎�뙣�떆 -1 諛섑솚  
	        result = pstmt.executeUpdate();
		}catch(Exception e) {
			System.out.println("userInsert => "+ e);
		}
		return result; //pstmt.executeUpdate(); 寃곌낵 媛� 諛쏆븘�꽌 signUPProAction.java濡� �꽆寃⑥쨲 �씠 媛믪쑝濡� �쉶�썝媛��엯 �꽦怨듭뿬遺� �뙋�떒
	}

	
	//userInfoGet() => userModifyAction.java 강봉구
	public UserBean userInfoGet(String u_ID) {
		UserBean user = null;
		try {
			con = pool.getConnection();
			sql = "select * from KICreabok.user where u_ID=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, u_ID);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				user = new UserBean();
				user.setU_ID(rs.getString("u_ID"));
				user.setU_pwd(rs.getString("u_pwd"));
				user.setU_name(rs.getString("u_name"));
				user.setU_phone(rs.getString("u_phone"));
				user.setU_email(rs.getString("u_email"));
				user.setU_gender(rs.getString("u_gender"));
				user.setU_address(rs.getString("u_address"));
			} 
		} catch(Exception e) {
			System.out.println("userInfoGet() Error =>"+e);
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return user;
	}
	
	//userUpdate() => userUpdateAction.java 강봉구
	public int userUpdate(UserBean user) {
		int result = 0;
		try {
			con = pool.getConnection();
			sql = "update KICreabok.user set u_phone=?, u_email=?,"+
			      "u_gender=?, u_address=?, u_name=? where u_id=?";
			pstmt = con.prepareStatement(sql);
			pstmt.setString(1, user.getU_phone());
			pstmt.setString(2, user.getU_email());
			pstmt.setString(3, user.getU_gender());
			pstmt.setString(4, user.getU_address());
			pstmt.setString(5, user.getU_name());
			pstmt.setString(6, user.getU_ID());
			int insert = pstmt.executeUpdate();
			System.out.println("insert : "+insert);
			if(insert > 0) {
				result = 1;
			}
		} catch(Exception e) {
			System.out.println("userUpdate() Error : "+e);
		}
		return result;
	}
}
