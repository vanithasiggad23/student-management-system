<%@page import="com.studentapp1.dto.student"%>
<%@page import="java.util.ArrayList"%>
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
        padding: 40px;
        color: #29332d;
    }

    /* =========================
       TABLE CONTAINER
       ========================= */

    table {
        width: 100%;
        max-width: 1200px;
        margin: 30px auto;

        border-collapse: separate;
        border-spacing: 0;

        background: #fffdf8;

        border-radius: 16px;

        overflow: hidden;

        box-shadow:
            0 10px 30px rgba(52, 78, 65, 0.10);

        border: 1px solid #e4dfd3;
    }

    /* =========================
       TABLE HEADER
       ========================= */

    thead tr:first-child {
        background: linear-gradient(
            135deg,
            #344e41,
            #426b57
        );
    }

    th {
        padding: 17px 18px;

        color: #fffaf2;

        font-size: 13px;

        letter-spacing: 0.7px;

        text-align: left;

        font-weight: bold;

        border-bottom: 2px solid #d8c49c;
    }

    /* =========================
       TABLE BODY
       ========================= */

    td {
        padding: 16px 18px;

        color: #3f4d44;

        font-size: 14px;

        border-bottom: 1px solid #e8e3d9;

        background: #fffdf8;
    }

    /* Alternating rows */

    tbody tr:nth-child(even) td {
        background: #f2f5ef;
    }

    /* Hover */

    tr:hover td {
        background: #e9efe5;

        transition: 0.2s ease;
    }

    /* Last row */

    tr:last-child td {
        border-bottom: none;
    }

    /* =========================
       SID
       ========================= */

    td:first-child {
        color: #344e41;

        font-weight: bold;
    }

    /* =========================
       NAME
       ========================= */

    td:nth-child(2) {
        color: #344e41;

        font-weight: 600;
    }

    /* =========================
       EXTRA ACTION COLUMN
       ========================= */

    td:last-child {
        color: #8a5a4d;

        font-weight: bold;
    }


    /* =========================
       MOBILE
       ========================= */

    @media (max-width: 900px) {

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
    .back-btn {
    display: inline-block;
    margin: 20px;
    padding: 10px 20px;
    background: #344e41;
    color: white;
    text-decoration: none;
    border-radius: 8px;
}

.back-btn:hover {
    background: #426b57;
}

</style>
</head>
<body>
<%
String message=(String)request.getParameter("success");
if(message!=null){%>
	<%=message %>
	
<%
}

%>
<%
String fail=(String)request.getAttribute("fail");
if(fail!=null){%>
	<%=fail %>
	
<%
}

%>

<%ArrayList<student>list=null;
if(request.getAttribute("stdlist")!=null){
	list=(ArrayList)request.getAttribute("stdlist");
}
%>
<table>
<thead>
<tr> 
<th>SID</th>
<th>NAME</th>
<th>EMAIL</th>
<th>PHONE</th>
<th>BRANCH</th>
<th>LOCATION</th>
<th>Action</th>
</tr>
</thead>

<tr>
<td></td>
</tr>
<%for(student st:list){ %>
<tr>
<td><%=st.getSid() %></td>
<td><%=st.getSname() %></td>
<td><%=st.getEmail() %></td>
<td><%=st.getPhone() %></td>
<td><%=st.getBranch() %></td>
<td><%=st.getLocation() %></td>
<td><button>
<a href="Delete?sid=<%= st.getSid() %>">Delete</a>
</button></td>
</tr>
<%} %>

</table>
<a href="Dashboard.jsp" class="back-btn">Back</a>
</body>
</html>