package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

public class BoardDAO {

	private DBConnectionMgr pool=null;
	private Connection con=null;
	private PreparedStatement pstmt=null; 
	private ResultSet rs=null; 
	private String sql=""; 
	
	public BoardDAO() {
		try {
			pool=DBConnectionMgr.getInstance();
			System.out.println("pool : "+pool);
		} catch (Exception e) {
			System.out.println("DB  BoardDAO : "+e);
		}
	}
	/*getBoardList(),countBoardList() => noticeAction.java 황인규  게시글 리스트 + 페이징처리  부탁드립니다.*/
	public List getBoardList() {
		
		List BoardList = null; 
		try {
			
		}catch(Exception e) {
			System.out.println("getBoardList =>"+e);
		}
		
		return BoardList;
	}
	
	public int countBoardList() {
		int count=0;
		try {
			
		}catch(Exception e) {
			System.out.println("countBoardList() =>"+e);
		}
		return count;
	}
}
