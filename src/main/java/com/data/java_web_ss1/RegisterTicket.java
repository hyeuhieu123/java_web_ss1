package com.data.java_web_ss1;

import java.io.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "RegisterTicket", value = "/RegisterTicket")
public class RegisterTicket extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        handleRegister(request, response);
    }

    private void handleRegister(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // Retrieve form data
        String fullName = request.getParameter("fullName");
        String className = request.getParameter("class");
        String vehicleType = request.getParameter("vehicleType");
        String licensePlate = request.getParameter("licensePlate");

        // Store data in request attributes (optional, for use in resultRegister.jsp)
        request.setAttribute("fullName", fullName);
        request.setAttribute("className", className);
        request.setAttribute("vehicleType", vehicleType);
        request.setAttribute("licensePlate", licensePlate);

        // Redirect to resultRegister.jsp
        response.sendRedirect("resultRegister.jsp");
    }
}