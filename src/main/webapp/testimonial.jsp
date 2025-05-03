<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer Testimonials</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="p-4" style="background-color:#f2f2f2;">
<div class="container">
    <h2 class="text-center mb-4">Customer Testimonials</h2>

    <div class="d-flex justify-content-center gap-3 mb-4">
        <a href="TestimonialServlet?type=wedding" class="btn btn-outline-primary">Customer's Review From Wedding Event</a>
        <a href="TestimonialServlet?type=birthday" class="btn btn-outline-success">Customer's review from Birthday Event</a>
        <a href="TestimonialServlet?type=corporate" class="btn btn-outline-dark">Customer's review from News Event</a>
        <a href="main.jsp" class="btn btn-primary">← Back to Main Page</a>
    </div>

    <!-- Rendered Testimonial -->
    <div>
        <%= request.getAttribute("testimonialHTML") != null ? request.getAttribute("testimonialHTML") : "<p>Select a testimonial category above.</p>" %>
    </div>
</div>
</body>
</html>
