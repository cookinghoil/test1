package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.UserBean;
import model.UserDAO;

public class userModifyAction implements CommandAction {
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		String u_ID = "bbong";
		UserBean user = new UserDAO().userInfoGet(u_ID);
		
		request.setAttribute("u_name", user.getU_name());
		request.setAttribute("u_ID", user.getU_ID());
		
		String[] email = user.getU_email().split("@");
		request.setAttribute("u_email1", email[0]);
		request.setAttribute("u_email2", email[1]);
		
		request.setAttribute("u_phone0", user.getU_phone().substring(0,3));
		request.setAttribute("u_phone1", user.getU_phone().substring(3,7));
		request.setAttribute("u_phone2", user.getU_phone().substring(7,11));
		
		request.setAttribute("u_address", user.getU_address());
		request.setAttribute("u_gender", user.getU_gender());
		
		return "/JSP/userModify.jsp";
	}

}
