package controller.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import controller.Controller;
import model.UserInfo;
import model.service.UserService;

public class DeleteUserController implements Controller {
    private static final Logger log = LoggerFactory.getLogger(DeleteUserController.class);

    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response)   throws Exception {
      String deleteId = request.getParameter("userId");
       log.debug("Delete User : {}", deleteId);

       UserService manager = UserService.getInstance();      
      HttpSession session = request.getSession();   
   
      if ((UserSessionUtils.isLoginUser("admin", session) &&    // �α����� ����ڰ� �������̰�    
          !deleteId.equals("admin"))                     // ���� ����� �Ϲ� ������� ���, 
            ||                                     // �Ǵ� 
         (!UserSessionUtils.isLoginUser("admin", session) &&  // �α����� ����ڰ� �����ڰ� �ƴϰ� 
           UserSessionUtils.isLoginUser(deleteId, session))) { // �α����� ����ڰ� ���� ����� ��� (�ڱ� �ڽ��� ����)
            
         manager.remove(deleteId);
      }
      else {
         /* ������ �Ұ����� ��� */
         UserInfo user = manager.findUser(deleteId);   // ����� ���� �˻�
         request.setAttribute("userInfo", user);                  
         request.setAttribute("deleteFailed", true);
         
         String msg = (UserSessionUtils.isLoginUser("admin", session)) 
                  ? "�ý��� ������ ������ ������ �� �����ϴ�."      
                  : "Ÿ���� ������ ������ �� �����ϴ�.";   
         request.setAttribute("exception", new IllegalStateException(msg)); 
      }
      return "/user/loginForm.jsp";   
   }
}