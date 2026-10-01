<%@page import="com.studentapp1.dto.student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: Arial, Helvetica, sans-serif;
    }

    body {
        min-height: 100vh;
        background: #f7f3ea;

        display: flex;
        justify-content: center;
        align-items: center;

        padding: 30px;
    }


    /* =========================
       UPDATE CARD
       ========================= */

    form {
        width: 100%;
        max-width: 500px;

        background: #fffdf8;

        padding: 40px;

        border-radius: 18px;

        box-shadow:
            0 12px 35px rgba(52, 78, 65, 0.12);

        border: 1px solid #e5dfd2;

        position: relative;
        overflow: hidden;
    }


    /* Decorative champagne circle */

    form::before {
        content: "";

        position: absolute;

        width: 150px;
        height: 150px;

        right: -75px;
        top: -75px;

        background: #d8c49c;

        border-radius: 50%;

        opacity: 0.22;
    }


    /* Decorative rose circle */

    form::after {
        content: "";

        position: absolute;

        width: 80px;
        height: 80px;

        left: -40px;
        bottom: -40px;

        background: #c58b7c;

        border-radius: 50%;

        opacity: 0.15;
    }


    /* =========================
       INPUTS
       ========================= */

    input[type="text"] {
        width: 100%;

        padding: 14px 16px;

        margin-bottom: 18px;

        border: 1px solid #d6ddd2;

        border-radius: 10px;

        background: #f3f6f0;

        color: #29382f;

        font-size: 15px;

        outline: none;

        transition: all 0.25s ease;

        position: relative;
        z-index: 1;
    }


    input[type="text"]:focus {
        background: #fffdf8;

        border-color: #789477;

        box-shadow:
            0 0 0 3px rgba(120, 148, 119, 0.12);
    }


    input[type="text"]::placeholder {
        color: #89928b;
    }


    /* =========================
       UPDATE BUTTON
       ========================= */

    input[type="submit"] {
        width: 100%;

        padding: 13px;

        margin-top: 5px;

        border: none;

        border-radius: 10px;

        background: #344e41;

        color: #fffaf2;

        font-size: 15px;

        font-weight: bold;

        cursor: pointer;

        transition: all 0.3s ease;

        position: relative;
        z-index: 1;
    }


    input[type="submit"]:hover {
        background: #426b57;

        transform: translateY(-2px);

        box-shadow:
            0 6px 15px rgba(52, 78, 65, 0.18);
    }


    /* =========================
       BACK LINK
       ========================= */

    form a {
        display: block;

        text-align: center;

        margin-top: 18px;

        color: #79564d;

        text-decoration: none;

        font-size: 14px;

        font-weight: bold;

        position: relative;
        z-index: 1;

        transition: 0.25s ease;
    }


    form a:hover {
        color: #344e41;

        text-decoration: underline;
    }


    /* =========================
       MOBILE
       ========================= */

    @media (max-width: 600px) {

        body {
            padding: 20px;
        }

        form {
            padding: 28px 22px;
        }

    }

</style>
</head>
<body>
<%student s=null;
if(session.getAttribute("student")!=null){ 
s=(student)session.getAttribute("student"); 
}
%>

<form action="update" method="post">
<input type="text" name="name" value="<%=s.getSname()%>">
<input type="text" name="branch" value="<%=s.getBranch()%>">
<input type="text" name="location" value="<%=s.getLocation()%>">
<input type="submit" value="update">
<a href="Dashboard.jsp">Back</a>
</form>
</body>
</html>