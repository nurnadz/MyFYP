<%-- 
    Document   : AllFishList
    Created on : Feb 22, 2020, 12:45:13 AM
    Author     : nadz
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fl" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
            <tr>
                <th>Fish Id</th>
                <th>Specis Name</th>
                <th>Common Name</th>
                <th>Order ID</th>
                <th>Order Name</th>
                <th>Family ID</th>
                <th>Family Name</th>
                <th>Category ID</th>
                <th>Category Name</th>
                 <th>Picture</th>
                <th>Action</th>
            </tr>
            <fl:forEach items="${AllFishList}" var="f">
            <tr>
               <td>${f.fishID}</td>
               <td>${f.scName}</td>
               <td>${f.cmName}</td>
               <td>${f.ordID}</td>
              <td>${f.ordName}</td>
              <td>${f.fmlyID}</td>
              <td>${f.fmlyName}</td>
               <td>${f.catID}</td>
              <td>${f.catName}</td>
                 <td>${f.fish_pic}</td>
               <td>
                   <a href="fish_edits?fishID=${f.fishID}">Edit</a>
                   <a href="fish_delete?fishID=${f.fishID}">Delete</a>
               </td>
            </tr>
            </fl:forEach>
        </table>
    </body>
</html>
