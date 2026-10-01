<%@ page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Login</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, Helvetica, sans-serif;
        }

        body {
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            background: linear-gradient(
                135deg,
                #ecfdf5,
                #f0fdf4,
                #d1fae5
            );
            padding: 20px;
        }

        /* Login Card */
        .login-container {
            width: 100%;
            max-width: 420px;
            background: rgba(255, 255, 255, 0.95);
            padding: 40px 35px;
            border-radius: 20px;
            box-shadow: 0 15px 40px rgba(6, 78, 59, 0.15);
            border: 1px solid #d1fae5;
        }

        /* Logo */
        .logo {
            width: 65px;
            height: 65px;
            margin: 0 auto 18px;

            display: flex;
            justify-content: center;
            align-items: center;

            border-radius: 50%;
            background: #059669;
            color: white;

            font-size: 28px;
            font-weight: bold;

            box-shadow: 0 8px 20px rgba(5, 150, 105, 0.25);
        }

        /* Heading */
        .heading {
            text-align: center;
            margin-bottom: 30px;
        }

        .heading h1 {
            color: #065f46;
            font-size: 28px;
            margin-bottom: 8px;
        }

        .heading p {
            color: #64748b;
            font-size: 14px;
        }

        /* Form */
        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 7px;

            color: #334155;
            font-size: 14px;
            font-weight: bold;
        }

        .required {
            color: #dc2626;
        }

        /* Input */
        .input-box {
            width: 100%;
            padding: 13px 14px;

            border: 1px solid #cbd5e1;
            border-radius: 9px;
            outline: none;

            font-size: 15px;
            background: #ffffff;
            color: #334155;

            transition: 0.3s;
        }

        .input-box:focus {
            border-color: #059669;
            box-shadow: 0 0 0 3px rgba(5, 150, 105, 0.12);
        }

        .input-box::placeholder {
            color: #94a3b8;
        }

        /* Password */
        .password-wrapper {
            position: relative;
        }

        .password-wrapper .input-box {
            padding-right: 65px;
        }

        .show-password {
            position: absolute;
            right: 12px;
            top: 50%;
            transform: translateY(-50%);

            border: none;
            background: transparent;

            color: #059669;
            font-size: 13px;
            font-weight: bold;

            cursor: pointer;
        }

        /* Forgot Password */
        .forgot {
            text-align: right;
            margin-top: 7px;
        }

        .forgot a {
            color: #059669;
            font-size: 13px;
            text-decoration: none;
        }

        .forgot a:hover {
            color: #047857;
            text-decoration: underline;
        }

        /* Login Button */
        .login-btn {
            width: 100%;
            padding: 13px;

            border: none;
            border-radius: 9px;

            background: #059669;
            color: white;

            font-size: 16px;
            font-weight: bold;

            cursor: pointer;
            transition: 0.3s;
        }

        .login-btn:hover {
            background: #047857;
            transform: translateY(-2px);
            box-shadow: 0 7px 18px rgba(5, 150, 105, 0.25);
        }

        /* Signup */
        .signup-section {
            text-align: center;
            margin-top: 25px;

            color: #64748b;
            font-size: 14px;
        }

        .signup-section a {
            color: #059669;
            text-decoration: none;
            font-weight: bold;
        }

        .signup-section a:hover {
            color: #047857;
            text-decoration: underline;
        }

        /* Mobile */
        @media (max-width: 500px) {
            .login-container {
                padding: 30px 22px;
            }

            .heading h1 {
                font-size: 25px;
            }
        }
    </style>
</head>

<body>

    <div class="login-container">

        <!-- Logo -->
        <div class="logo">S</div>

        <!-- Heading -->
        <div class="heading">
            <h1>Welcome Back</h1>
            <p>Login to your Student account</p>
        </div>

        <!-- Message from Servlet -->
        <%
            String message = (String) request.getAttribute("message");

            if (message != null) {
        %>

            <p><%= message %></p>

        <%
            }
        %>

        <!-- Login Form -->
        <form action="login" method="post">

            <!-- Email -->
            <div class="form-group">

                <label for="email">
                    Email <span class="required">*</span>
                </label>

                <input type="email" id="email" name="email" class="input-box" placeholder="Enter your email" required>

            </div>

            <!-- Password -->
            <div class="form-group">

                <label for="password">
                    Password <span class="required">*</span>
                </label>

                <div class="password-wrapper">

                    <input
                        type="password"
                        id="password"
                        name="pw"
                        class="input-box"
                        placeholder="Enter your password"
                        required
                    >

                    <button
                        type="button"
                        class="show-password"
                        onclick="togglePassword()"
                    >
                        Show
                    </button>

                </div>

                <!-- Forgot Password -->
                <div class="forgot">
                    <a href="ForgetPassword.jsp">
                        Forgot Password?
                    </a>
                </div>

            </div>

            <!-- Login Button -->
            <button type="submit" class="login-btn">
                Login
            </button>

        </form>

        <!-- Signup -->
        <div class="signup-section">
            Don't have an account?
            <a href="signup.jsp">Create Account</a>
        </div>

    </div>

    <script>

        function togglePassword() {

            const password = document.getElementById("password");
            const button = document.querySelector(".show-password");

            if (password.type === "password") {

                password.type = "text";
                button.innerText = "Hide";

            } else {

                password.type = "password";
                button.innerText = "Show";

            }
        }

    </script>

</body>
</html>

