<%-- 
    Document   : ManageAddResearcher
    Created on : Feb 22, 2020, 11:38:09 PM
    Author     : nadz
--%>

<%@page import="Model.Researcher"%>
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
   
            String name = request.getParameter("name");
            String institute = request.getParameter("institute"); 
            String field = request.getParameter("field");
            String email = request.getParameter("email");
            String phoneNo = request.getParameter("phoneNo");
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            
            Researcher researcher = new Researcher(0,name,institute,field,email,phoneNo,username,password);
            Datacontroller dc = new Datacontroller();
            dc.addResearcher(researcher);
            
            response.sendRedirect("/FormWisV2/AllResearcher");
            
        %>
    </body>
</html>
