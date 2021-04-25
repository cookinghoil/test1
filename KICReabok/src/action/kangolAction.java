package action;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.ProductBean;
import model.ProductDAO;

public class kangolAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		request.setCharacterEncoding("UTF-8");

		String p_page = request.getParameter("p_page");
			
		ProductDAO pdDAO = new ProductDAO();
		System.out.println("p_page==>"+p_page);
		List PdArticleList = pdDAO.Product_Get(p_page);
		int count =  pdDAO.Product_Get_Count(p_page);
		request.setAttribute("PdArticleList", PdArticleList);
		request.setAttribute("count", count);
		return "/JSP/kangol.jsp";
	}

}
