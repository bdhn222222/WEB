package com.java.be;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet(urlPatterns = {"/userconfirm","/userconfirm/*"})
public class UserServlet extends HttpServlet {
    public void service(HttpServletRequest req, HttpServletResponse res) throws IOException, ServletException {
        res.setContentType("text/html");
        String fName = req.getParameter("firstName");
        String lName = req.getParameter("lastName");
        String DoB = req.getParameter("dob");
        String PoB = req.getParameter("pob");
        String Sex = req.getParameter("sex");
        String[] freeDay = req.getParameterValues("freeDay");
        PrintWriter printWriter = res.getWriter();
        printWriter.println("<h1>Confirmation</h1>");
        printWriter.println("<p>Hello Mr." + lName + " " + fName + "</p>");
        printWriter.println("<p>Your birthday: " + DoB + "</p>");
        printWriter.println("<p>Your place of birth: " + PoB + "</p>");
        printWriter.println("<p>You're: " + Sex + "</p>");
        User user = new User(fName,lName,DoB,PoB,Sex,freeDay);
        req.setAttribute("user", user);
        String url = "/confirm.jsp";
        getServletContext().getRequestDispatcher(url).forward(req, res);
    }
}