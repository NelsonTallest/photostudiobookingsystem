<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Recent Events - Photo Studio</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background-color: #f8f9fa;
            padding: 40px 20px;
            font-family: 'Arial', sans-serif;
        }
        .card img {
            height: 250px;
            object-fit: cover;
        }
        .testimonial-quote {
            font-style: italic;
            color: #6c757d;
            margin-top: 10px;
        }
        .main-heading {
            text-align: center;
            color: #4e73df;
            margin-bottom: 40px;
        }
    </style>
</head>
<body>

<div class="container">
    <h1 class="main-heading">What Our Customers Are Saying</h1>

    <div class="row g-4">

        <!-- Testimonial 1 -->
        <div class="col-md-4">
            <div class="card shadow-sm">
                <img src="images/Event1.jpg" class="card-img-top" alt="Wedding Coverage">
                <div class="card-body">
                    <h5 class="card-title">Beautiful Wedding Moments</h5>
                    <p class="card-text">
                        "Their professionalism captured our most precious memories beautifully. Highly recommended for any special event!"
                    </p>
                    <div class="testimonial-quote">
                        - Mr. & Mrs. Johnson
                    </div>
                </div>
            </div>
        </div>

        <!-- Testimonial 2 -->
        <div class="col-md-4">
            <div class="card shadow-sm">
                <img src="images/event2.jpg" class="card-img-top" alt="Corporate Event">
                <div class="card-body">
                    <h5 class="card-title">Corporate Excellence</h5>
                    <p class="card-text">
                        "Our company's annual dinner was perfectly captured with stunning photos and videos. Professional and timely service!"
                    </p>
                    <div class="testimonial-quote">
                        - Alex Smith, CEO of TechWorld
                    </div>
                </div>
            </div>
        </div>

        <!-- Testimonial 3 -->
        <div class="col-md-4">
            <div class="card shadow-sm">
                <img src="images/event3.jpg" class="card-img-top" alt="Birthday Celebration">
                <div class="card-body">
                    <h5 class="card-title">Unforgettable Birthday Party</h5>
                    <p class="card-text">
                        "They made my son's 1st birthday a memory to cherish forever. Thank you for the amazing coverage and creativity!"
                    </p>
                    <div class="testimonial-quote">
                        - Cynthia O.
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div class="text-center mt-5">
        <a href="main.jsp" class="btn btn-primary">← Back to Main Page</a>
    </div>

</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
