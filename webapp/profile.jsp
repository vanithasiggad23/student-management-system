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
        flex-direction: column;
        justify-content: center;
        align-items: center;

        padding: 30px;
    }


    /* =========================
       TABLE
       ========================= */

    table {
        width: 100%;
        max-width: 900px;

        background: #fffdf8;

        border-collapse: separate;
        border-spacing: 0;

        border-radius: 18px;

        overflow: hidden;

        box-shadow:
            0 12px 35px rgba(52, 78, 65, 0.12);

        border: 1px solid #e3ddd1;
    }


    /* =========================
       HEADER
       ========================= */

    th {
        padding: 18px 20px;

        background: #344e41;

        color: #fffaf2;

        font-size: 13px;

        letter-spacing: 0.7px;

        text-align: left;

        font-weight: bold;

        border-bottom: 2px solid #d8c49c;
    }


    /* =========================
       STUDENT DATA
       ========================= */

    td {
        padding: 20px;

        background: #fffdf8;

        color: #3e4b43;

        font-size: 15px;

        border-right: 1px solid #eee8dc;
    }

    td:last-child {
        border-right: none;
    }


    /* Highlight important fields */

    td:first-child {
        color: #344e41;
        font-weight: bold;
    }

    td:nth-child(2) {
        color: #344e41;
        font-weight: 600;
    }


    /* =========================
       HOVER EFFECT
       ========================= */

    tr:nth-child(2):hover td {
        background: #edf2e9;

        transition: 0.25s ease;
    }


    /* =========================
       BACK BUTTON
       ========================= */

    a {
        display: inline-block;

        margin-top: 25px;

        padding: 11px 24px;

        background: #344e41;

        color: #fffaf2;

        text-decoration: none;

        font-size: 14px;

        font-weight: bold;

        border-radius: 22px;

        border: 1px solid #344e41;

        transition: all 0.3s ease;

        box-shadow:
            0 4px 12px rgba(52, 78, 65, 0.15);
    }


    a:hover {
        background: #d8c49c;

        color: #294438;

        border-color: #d8c49c;

        transform: translateY(-2px);

        box-shadow:
            0 7px 16px rgba(52, 78, 65, 0.15);
    }


    /* =========================
       MOBILE
       ========================= */

    @media (max-width: 800px) {

        body {
            padding: 20px;
        }

        table {
            display: block;
            overflow-x: auto;

            white-space: nowrap;
        }

        th,
        td {
            padding: 14px;
        }

    }

</style>
</head>
<body>
<%student s =(student) session.getAttribute("student"); %>
<table>
<thead>
<tr> 
<th>SID</th>
<th>NAME</th>
<th>EMAIL</th>
<th>PHONE</th>
<th>BRANCH</th>
<th>LOCATION</th>
</tr>

<tr>
<td><%=s.getSid() %></td>
<td><%=s.getSname() %></td>
<td><%=s.getEmail() %></td>
<td><%=s.getPhone() %></td>
<td><%=s.getBranch() %></td>
<td><%=s.getLocation() %></td>
</tr>
</thead>
</table>
<a href="Dashboard.jsp" type="submit">Back</a>
</body>
</html>