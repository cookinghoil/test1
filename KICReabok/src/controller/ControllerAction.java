package controller;

import java.io.*;//FileInputStream
import java.util.*;//Map,Properties
import javax.servlet.*;
import javax.servlet.http.*;

//�߰�->�ٸ� ��Ű���� Ŭ������ �������̽��� ����
import action.CommandAction;

public class ControllerAction extends HttpServlet {
	
    //��ɾ�� ��ɾ� ó��Ŭ������ ������ ����(���������� ó�����ִ� ��ü����)
    private Map commandMap = new HashMap();
    
	//������ ����� ������ �ʱ�ȭ �۾�->������
    public void init(ServletConfig config) 
                    throws ServletException {
    	
  //��ο� �´� CommandPro.properties������ �ҷ���
    String props = config.getInitParameter("propertyConfig");
    System.out.println("�ҷ��°��="+props);//��� �����ؼ� ���ϸ�
    
  //��ɾ�� ó��Ŭ������ ���������� ������
  //Properties��ü ����
    Properties pr = new Properties();
    FileInputStream f = null;//���Ϻҷ��ö� 
    
        try {
           //CommandPro.properties������ ������ �о��
        	f=new FileInputStream(props);
           
        	//������ ������ Properties�� ����
        	pr.load(f);
        	
        }catch(IOException e){
          throw new ServletException(e);
        }finally{
        if(f!=null) try{f.close();}catch(IOException ex){}	
        }
        	
     //��ü�� �ϳ��� ������ �� ��ü������ Properties
     //��ü�� ����� ��ü�� ����(properties->Ŭ������->���ڿ��̱⶧����)
     Iterator keyiter = pr.keySet().iterator();
     
     while(keyiter.hasNext()){
       //��û�� ��ɾ ���ϱ�����
       String command = (String)keyiter.next();
       System.out.println("command="+command);
       //��û�� ��ɾ�(Ű)�� �ش��ϴ� Ŭ�������� ����
       String className=pr.getProperty(command);
       System.out.println("className="+className);
       
       try{
       //�� Ŭ������ ��ü�� ���������� �޸𸮿� �ε�
       Class commandClass = Class.forName(className);
       System.out.println("commandClass="+commandClass);
       //Ŭ������ ����->Ŭ������.newInstance()ȣ��->��ü����
       Object commandInstance = commandClass.newInstance();
       System.out.println
              ("commandInstance="+commandInstance);
      
       //Map��ü commandMap�� ����(/list.do,ListAction@�ּҰ�)
       commandMap.put(command, commandInstance);
       System.out.println("commandMap="+commandMap);
       
            } catch (ClassNotFoundException e) {
                throw new ServletException(e);
            } catch (InstantiationException e) {
                throw new ServletException(e);
            } catch (IllegalAccessException e) {
                throw new ServletException(e);
            }
        }//while
    }

    public void doGet(//get����� ���� �޼ҵ�
                     HttpServletRequest request, 
                     HttpServletResponse response)
    throws ServletException, IOException {
    	    requestPro(request,response);
    }

    protected void doPost(//post����� ���� �޼ҵ�
                     HttpServletRequest request, 
                     HttpServletResponse response)
    throws ServletException, IOException {
    	    requestPro(request,response);
    }

    //�ÿ����� ��û�� �м��ؼ� �ش� �۾��� ó��
    private void requestPro(HttpServletRequest request,
    		                             HttpServletResponse response) 
    throws ServletException, IOException {
        String view=null;//��û��ɾ ���� �̵��� �������� �̸�
        // /list.do=action.ListAction->��ü
        CommandAction com=null;//��� �ڽ�Ŭ������ ��ü�� �θ������� ��ȯ
        //CommandAction com=new ListAction();//ListAction com=new ListAction()
        //CommandAction com=new WriteFormAction();
   	    try {
   	    	String command=request.getRequestURI();
   	    	System.out.println("request.getRequestURI()->"+request.getRequestURI());
   	    	//��û��ɾ�� ������Ʈ�̸������� ��ġ�ϴ� ��ġ�� ������ؼ�
   	    	System.out.println("request.getContextPath()->"+request.getContextPath());
   	    	//  /JspBoard2/list.do
   	    	if(command.indexOf(request.getContextPath())==0) {
   	    		command=command.substring(request.getContextPath().length());
   	    		System.out.println("�������� command=>"+command);// /list.do
   	    	}
   	    	//��û��ɾ�-> /list.do->action.ListAction��ü
   	    	com=(CommandAction)commandMap.get(command);
   	    	System.out.println("com=>"+com);//action.ListAction@�ּ�
   	    	view=com.requestPro(request, response);
   	    	System.out.println("view=>"+view);// /list.jsp
   	    }catch(Throwable  e) {
   	    	throw new ServletException(e);
   	    }
   	    //������ ��û��ɾ �ش��ϴ� view->�̵��϶�.
   	    RequestDispatcher dispatcher=request.getRequestDispatcher(view);//list.jsp
   	    dispatcher.forward(request, response);
    }
}





