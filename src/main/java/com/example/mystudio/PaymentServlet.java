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
        String redirectUrl = paymentFacade.getPayPalRedirectURL();

        // Redirect user to PayPal
        response.sendRedirect(redirectUrl);
    }
}
