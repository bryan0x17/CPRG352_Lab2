package ca.sait.calculator.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ArithmeticCalculatorServlet extends HttpServlet {


    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (request.getParameter("first") != null && request.getParameter("second") != null) {
            
            try {
                String firstString = request.getParameter("first");
                String secondString = request.getParameter("second");
                int first = Integer.parseInt(firstString);
                int second = Integer.parseInt(secondString);
                int result;
                if (request.getParameter("calculation").equals("add")) {
                    result = first + second;
                } else if (request.getParameter("calculation").equals("subtract")) {
                    result = first - second;
                } else if (request.getParameter("calculation").equals("multiply")) {
                    result = first * second;
                } else if (request.getParameter("calculation").equals("modulus")) {
                    result = first % second;
                } else {
                    throw new Exception();
                }
                request.setAttribute("message", result);
                request.setAttribute("first", first);
                request.setAttribute("second", second);
            } catch (Exception ex) {
                request.setAttribute("message", "Invalid");
                log("Exception occured");
            }
        } else {
            request.setAttribute("message", "Invalid");
            log("Null values");
        }
        getServletContext().getRequestDispatcher("/WEB-INF/arithmeticcalculator.jsp").forward(request, response);
    }
}
