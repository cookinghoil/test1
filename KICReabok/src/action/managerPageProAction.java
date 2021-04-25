package action;

import java.io.File;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import beans.ProductBean;
import model.ProductDAO;
import model.uploadDB;

public class managerPageProAction implements CommandAction {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		 int insertCheck=0;		 int p_no=0;
		 request.setCharacterEncoding("UTF-8");
		 String filename1 = "";		String encType = "UTF-8";
		 int maxSize = 1024*1024*5;
		 ProductDAO pdDAO = new ProductDAO();
		 p_no = pdDAO.getP_noCount()+1;
		 List nameList = null; 
		 //String subDir = Long.toString( System.currentTimeMillis());
		 //톰캣에서 저장되어있는 metadata에 저장, 프로젝트 /로 바꾸려면 톰캣 =>server option -> server module ~ 체크
		 String savePath = request.getServletContext().getRealPath("/img/"+p_no); 
		 //폴더 없으면 생성
		 File saveDir = new File(savePath);
		 if (!saveDir.exists()) { saveDir.mkdirs(); }
		 
		 DefaultFileRenamePolicy policy = new DefaultFileRenamePolicy();
		 try{
			 if(p_no != 0) {
			  MultipartRequest multi=new MultipartRequest(request, savePath, maxSize, encType, policy);
			  insertCheck=setDTO(multi);		 		  
			  Enumeration files = multi.getFileNames();
			  nameList = new ArrayList();
				  while(files.hasMoreElements()) {
					  String file1 = (String)files.nextElement();
					  filename1=multi.getFilesystemName(file1);
				 }
			 }
		 } catch(Exception e) {
			 e.printStackTrace();
		 }
		 System.out.println("insertCheck : " + insertCheck);
		 System.out.println(nameList);
		 System.out.println("savePath ===>"+savePath);
		 
		 if (insertCheck==1) {
			 File dir = new File(savePath);
			 File []fileList = dir.listFiles();
			 for(File file : fileList) {
				 if(file.isFile()) {
					 String fileName = file.getName();
					 System.out.println("fileName==>"+fileName);
					 //nameList.add(subDir+"/"+fileName);
					 nameList.add(p_no+"/"+fileName);
				 }
			 }
			uploadDB db = new uploadDB();
			int result = db.insertTest(nameList);
			if(result>0) {
				return "/JSP/managerPage.jsp";
			}else {
				return "/JSP/managerPage.jsp";
			}
		 } else {
			 System.out.println("p_info insert 실패로 img_box 업로드 하지 않음");
			 return "/JSP/managerPage.jsp";
		 }
	}
	
	private int setDTO(MultipartRequest multi) throws Throwable  {
		int check=0;
		ProductBean pdArticle = new ProductBean();
		String pdcode = multi.getParameter("pdcode");
		pdArticle.setPdcode(pdcode);
		pdArticle.setP_name(multi.getParameter("p_name"));
		pdArticle.setP_color(multi.getParameter("p_color"));
		pdArticle.setP_price(multi.getParameter("p_price"));
		
		pdArticle.setP_page( multi.getParameter("p_page"));
		pdArticle.setP_classify(multi.getParameter("p_classify"));

		pdArticle.setP_explain(multi.getParameter("p_explain"));
		pdArticle.setP_img(multi.getFilesystemName("p_img"));
		
		System.out.println("pdcode :" + pdcode + " p_name :" + multi.getParameter("p_name"));
		System.out.println("p_color :" + multi.getParameter("p_color")+" p_price : " + multi.getParameter("p_price"));
		System.out.println("p_page :" + multi.getParameter("p_page") + " p_explain :" + multi.getParameter("p_explain"));
		System.out.println("p_classify :" +multi.getParameter("p_classify") + " p_img : " + multi.getFilesystemName("p_img"));
		
		ProductDAO pdDAO = new ProductDAO();
		check = pdDAO.product_Insert(pdArticle);
		return check;
	}
}
