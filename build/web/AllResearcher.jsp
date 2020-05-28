<%-- 
    Document   : AllResearcher
    Created on : March 25, 2020, 11:59:26 PM
    Author     : nadz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="rl" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr>
                <th>Researcher Id</th>
                <th>Name</th>
                <th>Institute</th>
                <th>Field</th>
                <th>Email</th>
                <th>Phone No</th>
                <th>Username</th>
                <th>Action</th>
            </tr>
            <rl:forEach items="${AllResearcher}" var="f">
            <tr>
               <td>${f.ID}</td>
               <td>${f.name}</td>
               <td>${f.institute}</td>
               <td>${f.field}</td>
              <td>${f.email}</td>
              <td>${f.phoneNo}</td>
              <td>${f.username}</td>
               <td>
                   <a href="researcher_edit?ID=${f.ID}">Edit</a>
                   <a href="researcher_delete?ID=${f.ID}">Delete</a>
               </td>
            </tr>
            </rl:forEach>
        </table>
    </body>
</html>
