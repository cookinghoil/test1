package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//��û��ɾ ���� ó�����ִ� ��� Ŭ������ ����޼���
public interface CommandAction {
	//�̵��� �������� ��ο� ���������� �ʿ�->��ȯ=>ModelAndView(������)
    public String requestPro(HttpServletRequest request,
    		                              HttpServletResponse response)
                                          throws Throwable;
}
