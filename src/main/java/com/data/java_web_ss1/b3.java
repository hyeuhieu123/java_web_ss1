package com.data.java_web_ss1;import java.io.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "b3", value = "/b3")
public class b3 extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = "hieu";
        int age = 21;
        request.setAttribute("userName", name);
        request.setAttribute("userAge", age);

        RequestDispatcher dispatcher = request.getRequestDispatcher("b3.jsp");
        dispatcher.forward(request, response);
    }
}