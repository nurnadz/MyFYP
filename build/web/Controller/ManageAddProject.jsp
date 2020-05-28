<%-- 
    Document   : ManageAddProject
    Created on : Feb 21, 2020, 11:20:39 PM
    Author     : nadz
--%>

<%@page import="Dao.Datacontroller"%>
<%@page import="DBController.Dbconnect"%>
<%@page import="Model.Project"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Project</title>
    </head>
    <body>
        <% 
            String project_name = request.getParameter("project_name");
            int project_period = Integer.parseInt(request.getParameter("project_period"));
            String members = request.getParameter("members");
            
            Project project = new Project(0,project_name,project_period,members);
            Datacontroller dc = new Datacontroller();
            dc.addProject(project);
            
            response.sendRedirect("/FormWisV2/AllProjectList");
        %>
    </body>
</html>
