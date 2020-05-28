<%-- 
    Document   : ManageEditResearcher
    Created on : March 20, 2020, 3:05:30 AM
    Author     : nadz
--%>

<%@page import="Dao.Datacontroller"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <% 
            String idtmp = request.getParameter("ID");
            int ID = Integer.parseInt(idtmp);
            String name = request.getParameter("name");
            String institute = request.getParameter("institute");
            String field = request.getParameter("field");
            String email = request.getParameter("email");
            String phoneNo = request.getParameter("phoneNo");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
           
            Datacontroller dc = new Datacontroller();
            dc.researcherEdit(ID, name, institute, field,email,phoneNo,username,password);
            
            response.sendRedirect("/FormWisV2/AllResearcher");
        %>
    </body>
</html>
