package com.example.mystudio;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import testimonialFactory.Testimonial;
import testimonialFactory.TestimonialFactory;

import java.io.IOException;

@WebServlet("/TestimonialServlet")
public class TestimonialServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String type = request.getParameter("type");
        Testimonial testimonial = TestimonialFactory.getTestimonial(type);

        request.setAttribute("testimonialHTML", testimonial.getHTMLContent());
        request.getRequestDispatcher("testimonial.jsp").forward(request, response);
    }
}
