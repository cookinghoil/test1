package action;

import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.ProductBean;
import model.ProductDAO;

public class productDetailAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		List<String> subimg = new ArrayList<String>();
		String pdcode = request.getParameter("pdcode");
		int p_no=0;
		ProductBean pdArticle = new ProductBean();
		ProductDAO pdDAO = new ProductDAO();
		pdArticle = pdDAO.product_getDetail(pdcode);
		p_no = pdDAO.product_getNo(pdcode);
		
		if(p_no!=0) {
			subimg = pdDAO.product_getSubImg(p_no);
		}
		//System.out.println("pdArticle.pdcode : " + pdArticle.getPdcode());
		request.setAttribute("pdArticle", pdArticle);
		if(subimg != null) {
			request.setAttribute("subimg", subimg);
		}
		return "/JSP/productDetail.jsp";
	}

}
