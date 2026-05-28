package Input_Page;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/input")
public class InputServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        // フォーム画面を表示する
        request.getRequestDispatcher("/Input.jsp").forward(request, response);
    }
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");

        String oname = request.getParameter("oname");
        String mail = request.getParameter("mail_address");
        String sex = request.getParameter("sex");
        String[] cates = request.getParameterValues("cates");
        String pref = request.getParameter("pref");
        String message = request.getParameter("message");

        request.setAttribute("oname", oname);
        request.setAttribute("mail_address", mail);
        request.setAttribute("sex", sex);
        request.setAttribute("pref", pref);
        request.setAttribute("cates", cates);
        request.setAttribute("message", message);

        // confirm.jsp へ移動
        request.getRequestDispatcher("/Confirm.jsp").forward(request, response);
    }
}