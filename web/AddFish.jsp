<%-- 
    Document   : AddFish
    Created on : Feb 22, 2020, 11:02:37 PM
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
        <h1>Add Fish</h1>
         <form action ="AddFishFish" enctype="multipart/form-data" method="post" >

            <div id="content" style="height: 500px;">
                <h2>Fish Information</h2>
                <table>
                    <tr>
                        <td><label>Scientific Name:</label></td>
                        <td><input type="text" name="scName" size="50" placeholder="Ambassis interupta"</td>
                    </tr>
                    <tr>
                        <td><label>Common Name:</label></td>
                        <td><input type="text" name="cmName" size="50" placeholder="Seriding"</td>
                    </tr>
                    <tr>
 
                        <table border="0" width="30%" cellpading="9">
                            <tr>
                                <td><label for="ordID">Order ID:</label></td>
                                <td><select id="OrderID" name="ordID">
                                        <option value="RD001">RD001</option>
                                        <option value="RD002">RD002</option>
                                        <option value="RD003">RD003</option>
                                        <option value="RD004">RD004</option>
                                    </select></td>
                                
                                <td><label for="OrderName">Order Name:</label></td>
                                <td><select id="OrderName" name="ordName" width="25">
                                        <option value="Perciformes">Perciformes</option>
                                        <option value="Siluriformes">Siluriformes</option>
                                        <option value="Beloniformes">Beloniformes</option>
                                        <option value="Clupeiformes">Clupeiformes</option>
                                    </select></td>
                            </tr>
                            <tr>
                                <td><label for="FamilyID">Family ID:</label></td>
                                <td><select id="FamilyID" name="fmlyID" width="25">
                                        <option value="FM001">FM001</option>
                                        <option value="FM002">FM002</option>
                                        <option value="FM003">FM003</option>
                                        <option value="FM004">FM004</option>
                                    </select></td>
                                    
                                <td><label for="fmlyName">Family Name:</label></td>
                                <td><select id="fmlyName" name="fmlyName" width="25">
                                        <option value="Ambassidae">Ambassidae</option>
                                        <option value="Ariidae">Ariidae</option>
                                        <option value="Belonidae">Belonidae</option>
                                        <option value="Clupeidae">Clupeidae</option>
                                    </select></td>
                            </tr>
                            <tr>
                                <td><label for="CategoryID">Category ID:</label></td>
                                <td><select id="CategoryID" name="catID" width="25">
                                        <option value="ES-0123">ES-0123</option>
                                        <option value="MN-9872">MN-9872</option>
                                        <option value="FS-0654">FS-0654</option>
                                    </select></td>
                                    
                                <td><label for="catName">Category Name:</label></td>
                                <td><select id="catName" name="catName" width="25">
                                        <option value="Estuarine">Estuarine</option>
                                        <option value="Marine">Marine</option>
                                        <option value="Freshwater">Freshwater</option>
                                    </select></td>   
                                    <td><input type="file" name="fish_pic"><br><br></td>
                            </tr>                            
                       
                        
                        <tr>
                            <td><input type="submit" value="Submit" /></td>
                            <td><input type="reset" value="Reset" /></td>
                        </tr>
                        </table>
                        
                        </div>
                    </form>
    </body>
</html>
