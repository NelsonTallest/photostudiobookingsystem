package com.example.mystudio;
import facade.PaymentFacade;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import java.io.IOException;
public class PaymentServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PaymentFacade paymentFacade = new PaymentFacade();
        String type = request.getParameter("type");
        String redirectUrl;
        if ("paypal".equalsIgnoreCase(type)) {
            redirectUrl = paymentFacade.getPayPalRedirectURL();
        } else if ("creditcard".equalsIgnoreCase(type)) {
            redirectUrl = paymentFacade.getCreditCardRedirectURL();
        } else if ("banktransfer".equalsIgnoreCase(type)) {
            redirectUrl = paymentFacade.getBankTransferRedirectURL();
        } else if ("testimonials".equalsIgnoreCase(type)) {
            redirectUrl = paymentFacade.getPhotoVideoTestimonialsURL();
        } else {
            redirectUrl = "main.jsp"; // fallback
        }
        response.sendRedirect(redirectUrl);
    }
}
