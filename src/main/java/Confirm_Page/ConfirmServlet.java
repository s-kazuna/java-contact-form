package Confirm_Page;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/confirm")
public class ConfirmServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        request.setCharacterEncoding("UTF-8");

        String onamae = request.getParameter("onamae");
        String mail = request.getParameter("mail_address");
        String sex = request.getParameter("sex");
        String[] cates = request.getParameterValues("cates"); // 配列で受け取る
        String pref = request.getParameter("pref");
        String message = request.getParameter("message");

        request.setAttribute("onamae", onamae);
        request.setAttribute("mail_address", mail);
        request.setAttribute("sex", sex);
        request.setAttribute("cates", cates);
        request.setAttribute("pref", pref);
        request.setAttribute("message", message);
        
        // 完了画面へ
        request.getRequestDispatcher("/Confirm.jsp").forward(request, response);
    }
}