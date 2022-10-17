package prjDay4_5practice;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/userInfo2")
public class UserInfo2 extends HttpServlet {
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
//한글설정
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html ;UTF-8");
//사용자폼에서 넘어온 데이터 얻어오기 , 지금은 임의로
		String id = request.getParameter("id");
//데이터베이스에서 얻어오기
		String name = "홍길동";
		String addr = "서울";
		User user = new User(id, name, addr);
// 브라우저에 응답할 jsp 페이지로 포워딩
		RequestDispatcher r = request.getRequestDispatcher("/result.jsp");
		request.setAttribute("user", user);
		r.forward(request, response);
	}
}