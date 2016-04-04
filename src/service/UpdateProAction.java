package service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import project.UserInFo;
public class UpdateProAction implements CommandProcess {
	public String requestPro(HttpServletRequest request, HttpServletResponse response) {
		UserInFo ui = new UserInFo();
		ui.setEmail(request.getParameter("email"));
		return null;
	}
}