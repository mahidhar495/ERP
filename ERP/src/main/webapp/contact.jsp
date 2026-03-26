<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Contact Us</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            color: #333;
        }

        .container {
            max-width: 900px;
            margin: 30px auto;
            padding: 20px;
            background: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        h3 {
            text-align: center;
            font-size: 28px;
            color: #4CAF50;
            margin-bottom: 20px;
        }

        .profile-section {
            display: flex;
            align-items: center;
            margin-bottom: 30px;
            padding: 15px;
            background-color: #f4f4f4;
            border-radius: 8px;
        }

        .profile-section img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-right: 20px;
            border: 3px solid #4CAF50;
        }

        .profile-section .profile-info {
            font-size: 16px;
        }

        .profile-section .profile-info h4 {
            margin: 0;
            font-size: 20px;
            color: #4CAF50;
        }

        .profile-section .profile-info p {
            margin: 5px 0;
        }

        .contact-info {
            margin-bottom: 30px;
            line-height: 1.8;
        }

        .contact-info h4 {
            color: #4CAF50;
            margin-bottom: 10px;
        }

        .contact-info p {
            margin: 5px 0;
        }

        .contact-info a {
            color: #4CAF50;
            text-decoration: none;
        }

        .contact-info a:hover {
            text-decoration: underline;
        }

        .contact-form {
            margin-top: 20px;
        }

        .contact-form form {
            display: flex;
            flex-direction: column;
        }

        .contact-form input,
        .contact-form textarea {
            margin-bottom: 15px;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ddd;
            border-radius: 4px;
        }

        .contact-form button {
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #4CAF50;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .contact-form button:hover {
            background-color: #45a049;
        }
.footer {
            text-align: center;
            padding: 15px;
            background-color: #333;
            color: #fff;
            margin-top: 30px;
        }
    </style>
</head>
<body>
    <%@include file="navbar.jsp" %>
    <div class="container">
        <h3>Contact Us</h3>
        <!-- Profile Section -->
        <div class="profile-section">
            <img src="C:\Users\HARSHA\OneDrive\Desktop\Personal\PassPortPic.jpg" alt="">
            <div class="profile-info">
                <h4>xxxx</h4>
                <p>Role: Developer, ERP Specialist</p>
                <p>Email: <a href="mailto:xxx@gmail.com">xxx@gmail.com</a></p>
                <p>Phone: +91 12345 67890</p>
            </div>
        </div>
        <!-- Contact Information -->
        <div class="contact-info">
            <h4>Reach Us</h4>
            <p>If you have any questions or need assistance with our ERP system, feel free to reach out:</p>
            <p><strong>Address:</strong> 123, ERP Building,xxxxx,India</p>
            <p><strong>Support Email:</strong> <a href="mailto:support@erp.com">support@erp.com</a></p>
            <p><strong>Support Phone:</strong> +91 12345 67890</p>
        </div>
        <!-- Contact Form -->
        <div class="contact-form">
            <h4>Send Us a Message</h4>
            <form action="/submitContactForm" method="post">
                <input type="text" name="name" placeholder="Your Name" required>
                <input type="email" name="email" placeholder="Your Email" required>
                <textarea name="message" placeholder="Your Message" rows="5" required></textarea>
                <button type="submit">Send Message</button>
            </form>
        </div>
    </div>
    <div class="footer">
        © 2024 ERP System | ABC University
    </div>
</body>
</html>