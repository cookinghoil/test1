package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class ReabokDAO {
	/*connection*/
	private DBConnectionMgr pool = null;

	public ReabokDAO() {
		try {
			pool = DBConnectionMgr.getInstance();
			System.out.println("pool=>" + pool);
		} catch (Exception e) {
			System.out.println("Error connect=>" + e);
		}
	}
	
	public int getArticleSearchCount() {

		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		int x = 0;

		try {
			String sql = "";
			con = pool.getConnection();
			System.out.println("1호출");
			System.out.println("connection=" + con);
			
			sql = "select count(*) from test";
			
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				x = rs.getInt(1);
			}
		} catch (Exception e) {
			System.out.println("getArticleSearchCount()" + e);
		} finally {
			pool.freeConnection(con, pstmt, rs);
		}
		return x;
	}
}
