<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Make Payment</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="d-flex justify-content-center align-items-center" style="height: 100vh; background-color: #cedbd2;">

<div class="text-center">
  <h2>Proceed to Payment</h2>
  <p>Select your preferred payment method:</p>

  <div class="d-grid gap-3 col-6 mx-auto">
    <a href="<%= request.getContextPath() %>/PaymentServlet?type=paypal" class="btn btn-primary btn-lg">Pay with PayPal</a>
    <a href="<%= request.getContextPath() %>/PaymentServlet?type=creditcard" class="btn btn-primary btn-lg">Pay with Credit Card</a>
    <a href="<%= request.getContextPath() %>/PaymentServlet?type=banktransfer" class="btn btn-primary btn-lg">Pay with Bank Transfer</a>
    <a href="<%= request.getContextPath() %>/PaymentServlet?type=testimonials" class="btn btn-primary btn-lg">Check Recent Events</a>

  </div>
</div>

</body>
</html>
