package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class GoLostApplyController implements Controller{

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
	      String userId = request.getParameter("userId");
	      request.setAttribute("userId", userId);
		return "/pet/lost_apply_form.jsp";
	}

}
