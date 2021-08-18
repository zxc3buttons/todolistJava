package com.example.todolistJava;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "TODOServlet", urlPatterns = {"", "/"})
public class TODOServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
            IOException {
        if(request.getParameter("todoBtn").equals("add-todo")){
            if(request.getParameter("your_todo") == null ||
                    request.getParameter("your_todo").isEmpty()){
                String error = "Enter your todo";
                request.setAttribute("error", error);
            }
            else{
                DB.addTODO(request.getParameter("your_todo"));
            }
        }
        if(request.getParameter("todoBtn").equals("delete-todo")){

            for(int i = 0; i < DB.getSize(); i++){
                if(request.getParameter("someTODO" + i) != null){
                    DB.deleteByIndex(i);
                }
            }
        }
        getServletContext().getRequestDispatcher("/index.jsp").forward(request, response);
    }
}
