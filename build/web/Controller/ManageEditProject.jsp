<%-- 
    Document   : ManageEditProject
    Created on : March 12, 2020, 12:51:10 AM
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
            String idtmp = request.getParameter("project_id");
            int project_id = Integer.parseInt(idtmp);
            String project_name = request.getParameter("project_name");
            int project_period = Integer.parseInt(request.getParameter("project_period"));
            String members = request.getParameter("members");
           
            Datacontroller dc = new Datacontroller();
            dc.projectEdit(project_id, project_name, project_period, members);
            
            response.sendRedirect("/FormWisV2/AllProjectList");
        %>
    </body>
</html>
