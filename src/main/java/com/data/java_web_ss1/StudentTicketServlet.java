package com.data.java_web_ss1;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.*;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "StudentTicketServlet", value = "/StudentTicketServlet")
public class StudentTicketServlet extends HttpServlet {
    private List<Student> students;

    @Override
    public void init() {
        // Initialize the student list
        students = new ArrayList<>();
        students.add(new Student("John Doe", "10A1", "Bike", "123-ABC"));
        students.add(new Student("Jane Smith", "11B2", "Car", "456-DEF"));
        students.add(new Student("Alice Johnson", "12C3", "Bus", "789-GHI"));
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        req.setAttribute("students", students);

    }

}