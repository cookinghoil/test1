package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import beans.ProductBean;



public class ProductDAO {

	
		private DBConnectionMgr pool=null;
		private Connection con=null;
		private PreparedStatement pstmt=null; 
		private ResultSet rs=null; 
		private String sql=""; 
		
		public ProductDAO() {
			try {
				pool=DBConnectionMgr.getInstance();
				System.out.println("pool : "+pool);
			} catch (Exception e) {
				System.out.println("DB  ProductDAO() : "+e);
			}
		}
		
		/*Manager_pdInsert  => managerPageProAction.java에서 사용*/
		public int product_Insert(ProductBean pdArticle) {
			int check=0;
			try {
				con = pool.getConnection();
				
				sql="insert into p_info(pdcode,p_name,p_classify,p_color,p_page,p_price,p_explain,p_img)";
				sql+="values(?,?,?,?,?,?,?,?)";
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1, pdArticle.getPdcode());
				pstmt.setString(2, pdArticle.getP_name());
				pstmt.setString(3, pdArticle.getP_classify());
				pstmt.setString(4, pdArticle.getP_color());
				pstmt.setString(5, pdArticle.getP_page());
				pstmt.setString(6, pdArticle.getP_price());
				pstmt.setString(7, pdArticle.getP_explain());
				pstmt.setString(8, pdArticle.getP_img());
				
				check = pstmt.executeUpdate();
				System.out.println("product_Insert 성공여부(Insert) : " + check);
			} catch(Exception e) {
				System.out.println("Product_Insert() 메소드 에러 =>"+e);
			} finally {
				pool.freeConnection(con,pstmt);
			}
			return check;
		}
		public int getP_noCount() {
			int maxvalue =0;
			try {
				con = pool.getConnection();
				sql="select max(p_no) as maxLevel from p_info";
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					maxvalue = rs.getInt("maxLevel");
				}
				System.out.println("maxLevel : " + maxvalue);
			}catch(Exception e) {
				System.out.println(" getP_noCount() 메소드 에러 : "+e);
			}finally {
				pool.freeConnection(con,pstmt,rs);
			}
			return maxvalue;
		}
		//필요시 활용
		private ProductBean makeProductArticle() throws Exception {
			ProductBean pdList = new ProductBean();
			pdList.setPdcode(rs.getString("pdCode"));
			pdList.setP_name(rs.getString("p_name"));
			pdList.setP_color(rs.getString("p_color"));
			pdList.setP_price(rs.getString("p_price"));
			
			pdList.setP_page(rs.getString("p_page"));
			pdList.setP_classify(rs.getString("p_classify"));
			
			pdList.setP_explain(rs.getString("p_explain"));
			pdList.setP_img(rs.getString("p_img"));
			return pdList;
		}
		
		/*Product_Get =>kangolAction.java  이춘구*/ 
		public List<ProductBean> Product_Get(String p_page) {// 분류로 받아오기

			List<ProductBean> ProductList = null;
			try {
				con = pool.getConnection();
				String sql = "select * from p_info where p_page=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, p_page);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					ProductList = new ArrayList<ProductBean>();
					do {
						ProductBean pdBean = new ProductBean();

						pdBean.setPdcode(rs.getString("pdCode"));
						pdBean.setP_name(rs.getString("p_name"));
						pdBean.setP_price(rs.getString("p_price"));
						pdBean.setP_color(rs.getString("p_color"));
						pdBean.setP_classify(rs.getString("p_classify"));
						pdBean.setP_explain(rs.getString("p_explain"));
						pdBean.setP_img(rs.getString("p_img"));

						ProductList.add(pdBean);
					} while (rs.next());
				}
			} catch (Exception e) {
				System.out.println("Product_Get =>" + e);
			}
			return ProductList;
		}
		
		public int Product_Get_Count(String p_page) {
			int x = 0;
			try {
				con = pool.getConnection();
				sql = "select count(*) from p_info where p_page=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, p_page);
				rs = pstmt.executeQuery();
				if (rs.next()) {
					x = rs.getInt(1);
				}
				System.out.println(x);
			} catch (Exception e) {
				System.out.println("Product_Get_Count() 호출 에러: " + e);
			}
			return x;
		}
		
		/*ProductInsert managerPageProAction.java  �뿀移섏닔*/
		public ProductBean product_getDetail(String pdcode) {
			ProductBean pdArticle = null;
			try {
				pdArticle = new ProductBean();
				con = pool.getConnection();
				//System.out.println("DAO�뿉 �뱾�뼱�삩 pdcode : " + pdcode);
				sql = "select * from p_info where pdcode = ?";
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1,pdcode);
				rs=pstmt.executeQuery();
				if(rs.next()) {
					pdArticle = makeProductArticle();
					//System.out.println("�뀒�뒪�듃 �뜲�씠�꽣" + pdArticle.getPdcode());
				}
			} catch(Exception e) {
				System.out.println("product_getDetail() 硫붿냼�뱶 �뿉�윭 : "+e);
			} finally {
				pool.freeConnection(con, pstmt, rs);
			}
			return pdArticle;
		}
		
		public int product_getNo(String pdcode) {
			int p_no=0;
			try {
				con=pool.getConnection();
				sql="select p_no from p_info where pdcode = ?";
				pstmt=con.prepareStatement(sql);
				pstmt.setString(1,pdcode);
				rs=pstmt.executeQuery();
				if(rs.next()) {
					p_no=rs.getInt("p_no");
					System.out.println("p_no:" + p_no);
				}
			} catch(Exception e) {
				System.out.println("product_getNo() 硫붿냼�뱶 �뿉�윭 : " + e);
			} finally {
				pool.freeConnection(con, pstmt, rs);
			}
			return p_no;
		}
		
		public List<String> product_getSubImg(int p_no) {
			List<String> subimg = null;
			String sub_img="";
			try {
				con = pool.getConnection();
				sql = "select p_img from p_imgbox where p_no=?";
				pstmt=con.prepareStatement(sql);
				pstmt.setInt(1,p_no);
				rs=pstmt.executeQuery();
				if(rs.next()) {
					subimg = new ArrayList<String>();
					do {
						sub_img = rs.getString("p_img");
						System.out.println("sub_img :" +sub_img);
						subimg.add(sub_img);
					}while(rs.next());
				}
			} catch(Exception e) {
				System.out.println("product_getSubImg() 硫붿냼�뱶 �뿉�윭�씤寃껋씠�뿉�슜 : "+ e);
			} finally {
				pool.freeConnection(con, pstmt, rs);
			}
			return subimg;
		}		
		
		public List<ProductBean> getProduct(String classfy) {
			List<ProductBean> itemList = null;
			try {
				con = pool.getConnection();
				sql = "select * from product where classfy=?";
				pstmt = con.prepareStatement(sql);
				pstmt.setString(1, classfy);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					itemList = new ArrayList<ProductBean>();
					do {
						ProductBean list = new ProductBean();
						list.setPdcode(rs.getString("pdcode"));
						list.setP_name(rs.getString("name"));
						list.setP_price(rs.getString("price"));
						list.setP_color(rs.getString("color"));
						list.setP_classify(rs.getString("classfy"));
						list.setP_explain(rs.getString("context"));
						list.setP_img(rs.getString("image"));
						itemList.add(list);
						System.out.println("DAO itemList : "+itemList);
					}
					while(rs.next());
				}
			} catch(Exception e) {
				System.out.println("getProduct() Error: "+e);
			} finally {
				pool.freeConnection(con, pstmt, rs);
			}
			return itemList;
		}
		
}
