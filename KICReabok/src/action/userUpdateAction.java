package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.UserBean;
import model.UserDAO;

public class userUpdateAction implements CommandAction{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		
		request.setCharacterEncoding("utf-8");
		
		UserBean user = new UserBean();
		user.setU_name(request.getParameter("u_name"));
		user.setU_ID(request.getParameter("u_ID"));
		String email1 = request.getParameter("u_email1");
		String email2 = request.getParameter("u_email2");
		String u_email = email1+"@"+email2;
		user.setU_email(u_email);
		String tel0 = request.getParameter("tel0");
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		System.out.println("tel0 : "+tel0);
		System.out.println("tel1 : "+tel1);
		System.out.println("tel2 : "+tel2);
		String u_phone = tel0+tel1+tel2;
		System.out.println("u_phone : "+u_phone);
		user.setU_phone(u_phone);
		user.setU_address(request.getParameter("u_address"));
		user.setU_gender(request.getParameter("u_gender"));
		new UserDAO().userUpdate(user);
		
		UserBean userlist = new UserDAO().userInfoGet(user.getU_ID());
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
