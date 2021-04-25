package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.ReabokDAO;

public class IndexAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {

		ReabokDAO dbPro=new ReabokDAO();
		int count=dbPro.getArticleSearchCount();
		System.out.println("Count=>"+count);
		return "/JSP/index.jsp"; 
	}

}
