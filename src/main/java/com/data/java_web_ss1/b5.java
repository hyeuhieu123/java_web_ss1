package com.data.java_web_ss1;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "b", value = "/b5")
public class b5 extends HttpServlet {
    private String message;


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try {
            int result = 10 / 0;
            response.getWriter().println("Result: " + result);
        } catch (Exception e) {

            response.sendRedirect("error.jsp");
        }
    }
    public void destroy() {
    }
}