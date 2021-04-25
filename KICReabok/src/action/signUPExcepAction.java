//회占쏙옙占쏙옙占쏙옙 占쏙옙 占십쇽옙占쌓몌옙!!

//1. 占쏙옙占싱듸옙 占쏙옙占쏙옙 확占쏙옙
//2. 占쏙옙拈占쏙옙占� 占쏙옙占쏙옙, 占쏙옙占쏙옙占쏙옙占�
//3. 占쏙옙占쏙옙占쌘울옙 占쏙옙占쏙옙 혼占쎈여占쏙옙

//1.占쏙옙橘占싫� 확占쏙옙
//2.占쏙옙拈占쏙옙占� 占쏙옙 占쏙옙占쏙옙 확占쏙옙
//3.pwd1 占쏙옙 pwd2 占쏙옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 확占쏙옙占싹깍옙

package action;

import java.util.Enumeration;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.UserBean;
import model.UserDAO;

public class signUPExcepAction implements CommandAction{
	@Override
	public String requestPro(HttpServletRequest request, HttpServletResponse response) throws Throwable {
		Enumeration e = request.getParameterNames();
		
		while(e.hasMoreElements()) {
			String str = (String) e.nextElement();
			System.out.println(str + " = " + request.getParameter(str));
		}
		
		String id = request.getParameter("id");
		String pwd1 = request.getParameter("passwd");
		String pwd2 = request.getParameter("repasswd");
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String year = request.getParameter("year");
		String gender = request.getParameter("gender");
		
		
		
		
		
		//占쏙옙占싱듸옙 확占쏙옙 占쌉쇽옙 호占쏙옙
		int result = idFormatCheck(id);
		
	    if(result < 0) {
	    	request.setAttribute("idCheck", "5~12자 사이의 아이디를 만들어주세요.");
    		return "/JSP/signUP.jsp";
	    }
	    
	    
	    int result2 = idFormatCheck2(id);
	    
	    if(result2 < 0) {
	    	request.setAttribute("idCheck2", "id 형식을 확인해주세요");
    		return "/JSP/signUP.jsp";
	    }
	    
		
	    //占쏙옙橘占싫� 확占쏙옙 占쌉쇽옙 호占쏙옙.
	 //   String pwd1 = request.getParameter("passwd");
	  //  String pwd2 = request.getParameter("repasswd");
	  //  System.out.println(pwd1 + "=" + request.getParameter(pwd1));
	  //  System.out.println(pwd2 + "=" + request.getParameter(pwd2));
	    
	    int result3 = pwdcheck(pwd1, pwd2); 
		
	    if(result3 < 0) {
	    	request.setAttribute("pwdCheck", "비밀번호를 확인해주세요");
	    	return "/JSP/signUP.jsp";
	    }if(result3 < -1) {
	    	request.setAttribute("pwdCheck2", "비밀번호를 확인해주세요.");
	    	return "/JSP/signUP.jsp";
	    }
	    
	    
	    //占쌨댐옙占쏙옙 占쏙옙호 확占쏙옙 占쌉쇽옙 호占쏙옙
	    int result5 = phoneCheck(request.getParameter("phone"));
		
	    if(result5 < 0) {
	    	request.setAttribute("phoneCheck", "폰 번호 형식이 다릅니다. ex,XXX-XXXX-XXXX");
    		return "/JSP/signUP.jsp";
	    }
	    
	    UserBean bean = new UserBean(); //UserBean媛앹껜 媛��졇�샂
		
		bean.setU_ID(id); // �쐞�뿉�꽌 媛��졇�삩 UserBean 媛앹껜�뿉 setU_ID()硫붿냼�뱶瑜� �씠�슜�빐�꽌 String id = request.getParameter("id"); 媛믪쓣 �꽔�뼱以��떎.
		bean.setU_pwd(pwd1);
		bean.setU_name("홍길동");
		bean.setU_phone(phone);
		bean.setU_email(email);
		bean.setU_gender(gender);
	    bean.setU_address("서울시");
	    
	    UserDAO dao = new UserDAO();
	    int result6 = dao.userInsert(bean);
	    if(result6>0) {
	    	return "/JSP/login.jsp";
	    }else {
	    	return "/JSP/signUP.jsp";
	    }
		
		
	}

	//占쏙옙占싱듸옙 확占쏙옙
	public int idFormatCheck(String str){
		System.out.println(str.length());
		if(str.length()<5 || str.length()>12) {
			System.out.println("5~12 글자 사이의 아이디를 만들어 주세요");
			return -1;
		}
		return 0;
	}
	
	int cnt1=0;
	int cnt2=0;
	
	public int idFormatCheck2(String str){
	for(int i=0;i<str.length();i++) {
		char ch = str.charAt(i);
		if((ch>='a'&& ch<='z') || (ch>='A'&& ch<='Z'))
			cnt1++;
		else if(ch>='0' && ch<='9')
			cnt2++;
	}
	if(cnt1==0 || cnt2==0) {
		System.out.println("빈칸이 있습니다.");
		return -2;
	}
		return 0;
	}
	
		
	//占쏙옙橘占싫� 확占쏙옙
	public int pwdcheck(String str1, String str2) {
		int cnt1=0;
		int cnt2=0;
		
		for(int i=0;i<str1.length();i++) {
			char ch = str1.charAt(i);
			if((ch>'a'&& ch<='z') || (ch>='A' && ch<='Z'))
				cnt1++;
			else if(ch>='0' && ch<='9')
				cnt2++;
		}
		if(cnt1==0 || cnt2==0) {
			System.out.println("빈칸이 있습니다.");
			return -1;
		}
		if(!str1.equals(str2)) {
			System.out.println("비밀번호가 일치하지 않습니다.");
		return -2;
	}
		return 0;
	}
	
		
	//占쌨댐옙占쏙옙占쏙옙호 확占쏙옙
	public int phoneCheck(String phone) {
		boolean check = Pattern.matches(
				"(010|011|017|016)-(\\d{3,4})-(\\d{4})",phone);
		if(!check) {
			System.out.println("번호 사이에 -를 입력해주세요 ex,XXX-XXXX-XXXX");
			return -1;
		}
		return 0;
	}
}

