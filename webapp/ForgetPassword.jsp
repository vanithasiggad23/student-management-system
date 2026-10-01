<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Reset Password</title>


    <style>

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: Arial, Helvetica, sans-serif;
        }


        /* =========================
           BODY
        ========================= */

        body {
            min-height: 100vh;

            display: flex;
            justify-content: center;
            align-items: center;

            background: #f0fdf4;

            padding: 20px;
        }


        /* =========================
           MAIN CONTAINER
        ========================= */

        .container {
            width: 100%;
            max-width: 450px;

            background: #ffffff;

            padding: 35px;

            border-radius: 16px;

            border: 1px solid #dcfce7;

            box-shadow: 0 10px 30px rgba(22, 101, 52, 0.12);
        }


        /* =========================
           LOGO
        ========================= */

        .logo {
            width: 62px;
            height: 62px;

            margin: 0 auto 18px;

            display: flex;
            justify-content: center;
            align-items: center;

            border-radius: 50%;

            background: #16a34a;

            color: white;

            font-size: 27px;
            font-weight: bold;

            box-shadow: 0 5px 15px rgba(22, 163, 74, 0.25);
        }


        /* =========================
           HEADING
        ========================= */

        .heading {
            text-align: center;

            margin-bottom: 28px;
        }

        .heading h1 {
            color: #166534;

            font-size: 27px;

            margin-bottom: 8px;
        }

        .heading p {
            color: #64748b;

            font-size: 14px;

            line-height: 1.5;
        }


        /* =========================
           FORM
        ========================= */

        .form-group {
            margin-bottom: 18px;
        }

        label {
            display: block;

            margin-bottom: 7px;

            color: #334155;

            font-size: 14px;

            font-weight: bold;
        }

        .required {
            color: #dc2626;
        }


        /* =========================
           INPUT
        ========================= */

        .input-box {
            width: 100%;

            padding: 12px 14px;

            border: 1px solid #cbd5e1;

            border-radius: 8px;

            background: #ffffff;

            color: #1e293b;

            font-size: 15px;

            outline: none;

            transition: all 0.25s ease;
        }

        .input-box:hover {
            border-color: #86efac;
        }

        .input-box:focus {
            border-color: #16a34a;

            box-shadow: 0 0 0 3px rgba(22, 163, 74, 0.12);
        }

        .input-box::placeholder {
            color: #94a3b8;
        }


        /* =========================
           PASSWORD
        ========================= */

        .password-wrapper {
            position: relative;
        }

        .password-wrapper .input-box {
            padding-right: 70px;
        }

        .show-password {
            position: absolute;

            right: 12px;
            top: 50%;

            transform: translateY(-50%);

            border: none;

            background: transparent;

            color: #16a34a;

            font-size: 13px;

            font-weight: bold;

            cursor: pointer;
        }

        .show-password:hover {
            color: #15803d;
        }


        /* =========================
           RESET BUTTON
        ========================= */

        .reset-btn {
            width: 100%;

            padding: 13px;

            border: none;

            border-radius: 8px;

            background: #16a34a;

            color: white;

            font-size: 16px;

            font-weight: bold;

            cursor: pointer;

            transition: all 0.25s ease;
        }

        .reset-btn:hover {
            background: #15803d;

            transform: translateY(-1px);

            box-shadow: 0 6px 15px rgba(22, 163, 74, 0.25);
        }

        .reset-btn:active {
            transform: translateY(0);
        }


        /* =========================
           LOGIN LINK
        ========================= */

        .links {
            text-align: center;

            margin-top: 22px;

            font-size: 14px;

            color: #64748b;
        }

        .links a {
            color: #16a34a;

            text-decoration: none;

            font-weight: bold;
        }

        .links a:hover {
            color: #15803d;

            text-decoration: underline;
        }


        /* =========================
           RESPONSIVE
        ========================= */

        @media (max-width: 500px) {

            .container {
                padding: 28px 20px;
            }

        }

    </style>

</head>


<body>

    <div class="container">


        <!-- Logo -->

        <div class="logo">
            S
        </div>


        <!-- Heading -->

        <div class="heading">

            <h1>Reset Password</h1>

            <p>
                Enter your registered details to create a new password
            </p>

        </div>


        <!-- Reset Password Form -->

        <form action="forgotpassword"
              method="post">


            <!-- Email -->

            <div class="form-group">

                <label for="email">

                    Email

                    <span class="required">*</span>

                </label>

                <input type="email"
                       id="email"
                       name="email"
                       class="input-box"
                       placeholder="Enter your registered email"
                       required>

            </div>


            <!-- Phone -->

            <div class="form-group">

                <label for="phone">

                    Phone Number

                    <span class="required">*</span>

                </label>

                <input type="tel"
                       id="phone"
                       name="phone"
                       class="input-box"
                       placeholder="Enter your registered phone"
                       maxlength="10"
                       pattern="[0-9]{10}"
                       required>

            </div>


            <!-- New Password -->

            <div class="form-group">

                <label for="password">

                    New Password

                    <span class="required">*</span>

                </label>


                <div class="password-wrapper">

                    <input type="password"
                           id="password"
                           name="password"
                           class="input-box"
                           placeholder="Enter new password"
                           required>


                    <button type="button"
                            class="show-password"
                            onclick="togglePassword('password', this)">

                        Show

                    </button>

                </div>

            </div>


            <!-- Confirm Password -->

            <div class="form-group">

                <label for="confirm">

                    Confirm Password

                    <span class="required">*</span>

                </label>


                <div class="password-wrapper">

                    <input type="password"
                           id="confirm"
                           name="confirm"
                           class="input-box"
                           placeholder="Re-enter new password"
                           required>


                    <button type="button"
                            class="show-password"
                            onclick="togglePassword('confirm', this)">

                        Show

                    </button>

                </div>

            </div>


            <!-- Submit -->

            <button type="submit"
                    class="reset-btn">

                Reset Password

            </button>


        </form>


        <!-- Back to Login -->

        <div class="links">

            <a href="login.jsp">
                Back to Login
            </a>

        </div>

    </div>


    <!-- JavaScript -->

    <script>

        function togglePassword(inputId, button) {

            const input =
                document.getElementById(inputId);


            if (input.type === "password") {

                input.type = "text";

                button.innerText = "Hide";

            } else {

                input.type = "password";

                button.innerText = "Show";

            }

        }

    </script>

</body>

</html>