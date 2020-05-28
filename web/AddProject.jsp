<%-- 
    Document   : AddProject
    Created on : Feb 22, 2020, 11:00:19 PM
    Author     : nadz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Add New Project</h1>
        <form action ="Controller/ManageAddProject.jsp" method="post">
        
        <fieldset>
            <table>
                <tbody>
                    <tr>
                        <td><label>Project Name: </label></td>
                        <td><input type="text" name="project_name" size="50"/></td>
                    </tr>
                    <tr>
                        <td><label>Project Period(Year): </label></td>
                        <td><input type="number" name="project_period" size="50"/></td>
                    </tr>
                    <tr>
                        <td><label>Members: </label></td>
                        <td><textarea rows="10" cols="50" name="members" ></textarea></td>
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
    </body>
</html>
