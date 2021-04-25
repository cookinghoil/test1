package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.UserDAO;

public class loginProAction implements CommandAction {

	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		String userid = request.getParameter("id");
		String passwd = request.getParameter("passwd");
		
		UserDAO uda = new UserDAO();
		int result = uda.userCheck(userid, passwd);
		if(result>0) {
			HttpSession session = request.getSession();
			session.setAttribute("id", userid);

			return "/JSP/index.jsp";
		}else {
			request.setAttribute("error", "1");
			return "/JSP/login.jsp";
		}
		
	}

}
