// servlet/ContactServlet.java
package com.example.mystudio;

import context.ContactContext;
import strategy.OpenExternalContactPageStrategy;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet("/ContactServlet")
public class ContactServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        ContactContext context = new ContactContext();
        OpenExternalContactPageStrategy strategy = new OpenExternalContactPageStrategy();

        context.setContactStrategy(strategy);
        context.executeStrategy();

        response.sendRedirect(strategy.getRedirectUrl());
    }
}
