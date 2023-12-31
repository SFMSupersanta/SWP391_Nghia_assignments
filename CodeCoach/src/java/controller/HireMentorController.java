/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller;

import dal.BookingsDAO;
import dal.MenteeDAO;
import dal.MentorDAO;
import dal.SlotDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import model.Booking;
import model.BookingDetails;
import model.Mentees;
import model.Mentors;
import model.Slot;
import model.Users;

/**
 *
 * @author MrTuan
 */
public class HireMentorController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet HireMentorController</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet HireMentorController at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
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
//        processRequest(request, response);
        Users user = (Users) request.getSession().getAttribute("users");
        if (user != null) {
            int mentorId = Integer.parseInt(request.getParameter("mentorId"));
            MentorDAO mentorDAO = new MentorDAO();
            SlotDAO slotDAO = new SlotDAO();
            Mentors mentor = mentorDAO.getMentorByUserId(mentorId);
            List<Slot> listSlot = slotDAO.getAll();
            request.setAttribute("infoMentor", mentor);
            request.setAttribute("listSlot", listSlot);
            request.getRequestDispatcher("hireMentor.jsp").forward(request, response);
        }
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
//        processRequest(request, response);
        Users user = (Users) request.getSession().getAttribute("users");
        if (user != null) {
            BookingsDAO bookingDAO = new BookingsDAO();
            MentorDAO mentorDAO = new MentorDAO();
            MenteeDAO menteeDAO = new MenteeDAO();
            Mentors mentor = mentorDAO.getMentorByUserId(user.getUserId());
            Mentees mentee = menteeDAO.getMenteeByUserId(user.getUserId());
            int mentorId = Integer.parseInt(request.getParameter("mentorId"));
            int newTimeslot = 0;
            String newDate = "";
            for (int i = 0; i <= 7; i++) {
                String timeslot = request.getParameter("timeslot_" + i);
                String date = request.getParameter("date_" + i);

                if (timeslot != null && !timeslot.isEmpty() && date != null && !date.isEmpty()) {
                    newTimeslot = Integer.parseInt(timeslot);
                    newDate = date;
                }
            }
            boolean booking = bookingDAO.insert(new Booking(mentorId, mentee.getMenteeId(), 1, "Pending"), new BookingDetails(newTimeslot, newDate));
//                    if(booking==true){
//                        request.getRequestDispatcher("").forward(request, response);
//                    }else{
//                        return;
//                    }

        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
