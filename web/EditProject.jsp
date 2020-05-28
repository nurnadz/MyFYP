<%-- 
    Document   : EditProject
    Created on : March 10, 2020, 12:47:45 AM
    Author     : nadz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="pi" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Edit Project</h1>
        <pi:forEach items="${getAllProjectbyID}" var="p">
        <form action ="Controller/ManageEditProject.jsp" method="POST">
            <input type="hidden" name="project_id" value="${p.project_id}">
        <fieldset>
            <table>
                <tbody>
                    <tr>
                        <td><label>Project Name: </label></td>
                        <td><input type="text" name="project_name" value="${p.project_name}" size="50"/></td>
                    </tr>
                    <tr>
                        <td><label>Project Period(Year): </label></td>
                        <td><input type="number" name="project_period" value="${p.project_period}" size="50"/></td>
                    </tr>
                    <tr>
                        <td><label>Members: </label></td>
                        <td><textarea rows="10" cols="50" name="members" >${p.members}</textarea></td>
                    </tr>
                    <tr>
                        <td><label></label></td>
                        <td><input type="submit" value="Save"/>
                            <input type="reset" value="Cancel"/></td>
                    </tr>
                </tbody>
            </table>
        </fieldset>
    </form>
        </pi:forEach>
    </body>
</html>
