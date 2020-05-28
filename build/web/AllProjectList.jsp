<%-- 
    Document   : AllProjectList
    Created on : March 12, 2020, 11:37:37 PM
    Author     : nadz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="pr" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>All Project</title>
    </head>
    <body>
        <table>
            <tr>
                <th>Project Id</th>
                <th>Project Name</th>
                <th>Project Period</th>
                <th>Members</th>
                <th>Action</th>
            </tr>
            <pr:forEach items="${AllProjectList}" var="p">
            <tr>
               <td>${p.project_id}</td>
               <td>${p.project_name}</td>
               <td>${p.project_period}</td>
               <td>${p.members}</td>
               <td>
                   <a href="project_edit?project_id=${p.project_id}">Edit</a>
                   <a href="project_delete?project_id=${p.project_id}">Delete</a>
               </td>
            </tr>
            </pr:forEach>
        </table>
    </body>
</html>
