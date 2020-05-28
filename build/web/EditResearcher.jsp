<%-- 
    Document   : EditResearcher
    Created on : March 15, 2020, 3:09:13 AM
    Author     : nadz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fi" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <fi:forEach items="${getResearcherbyID}" var="p">
       <form action ="Controller/ManageEditResearcher.jsp" method="post">
        <input type="hidden" name="ID" value="${p.ID}">
        <div id="mainlayout">
            <div id="container" style="height:600px;">
                <div class="content">
                    
                    <br>
                    
                    <fieldset>
                    <h2>Researcher Registration Form</h2>
                        <table>                            
                            <tr>
                                <td><label>Name :</label></td>
                                <td><input type="text" name="name" value="${p.name}" size="50"/></td>
                            </tr>
                            <tr>
                                <td><label for="institute">Institute:</label></td>
                                <td><select id="Institute" name="institute">
                                        <option value="${p.institute}">${p.institute}</option>
                                        <option value="Please select institute">Please select institute</option>
                                        <option value="FRI Batu Maung">FRI Batu Maung</option>
                                        <option value="FRI Gelang Patah">FRI Gelang Patah</option>
                                        <option value="FRI Pulau Sayak">FRI Pulau Sayak</option>
                                        <option value="AIMST University">AIMST University</option>
                                        <option value="Institut Sumber Marin Asia Tenggara">Institut Sumber Marin Asia Tenggara</option>
                                        <option value="Universiti Putra Malaysia">Universiti Putra Malaysia</option>
                                        <option value="Universiti Malaysia Sabah">Universiti Malaysia Sabah</option>
                                        <option value="Universiti Malaysia Terengganu">Universiti Malaysia Terengganu</option>
                                        <option value="UCSI University">UCSI University</option>
                                    </select></td>  
                            </tr>
                            <tr>
                                <td><label>Field:</label></td>
                                 <td><select id="field" name="field">
                                        <option value="${p.field}">${p.field}</option>
                                        <option value="Please select field">Please select field</option>
                                        <option value="Aquaculture">Aquaculture</option>
                                        <option value="Biostatistic">Biostatistic</option>
                                        <option value="Fisheries">Fisheries</option>
                                        <option value="Marine Science">Marine Science</option>
                                        <option value="Maritime Science">Maritime Science</option>
                                        <option value="Verterinar">Verterinar</option>
                                        <option value="Zoology">Zoology</option>    
                                    </select></td>  
                            </tr>
                            <tr>
                                    <td><label for="email">Email:</label></td>
                                <td><input type="email" id="email" value="${p.email}" name="email" size="50"/></td>    
                            </tr>
                            <tr>
                                <td><label>Phone Number:</label></td>
                                <td><input type="text" name="phoneNo" value="${p.phoneNo}"  size="50"/></td>    
                            </tr>
                            <tr>
                                <td><label>User Name:</label></td>
                                <td><input type="text" name="username" value="${p.username}"  size="50"/></td>    
                            </tr>
                                
                            <tr>
                                <td><label>Password:</label></td>
                                <td><input type="password" name="password" value="${p.password}"  size="50"/></td>
                            </tr>
                            
                            <tr>
                            <td><input type="submit" onclick="alert("Registration is Succesfulvalue="Submit" /></td>
                            <td><input type="reset" value="Reset" /></td>
                            </tr>
                    
                            
                            <BR><BR>
                            
                            <tr>
                            <td colspan="3">Already registered!! <a href="HOMEPAGEFOMWIS.jsp">Login Here</a></td>
                            </tr>
                        </table>
                
                  </fieldset>
                </div>
            </div>
        </div>
        </form>
         </fi:forEach>                   
    </body>
</html>
