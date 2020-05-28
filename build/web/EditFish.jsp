<%-- 
    Document   : EditFish
    Created on : March 13, 2020, 12:17:09 AM
    Author     : nadz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fi" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
           <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
    </head>
    <body>
            <fi:forEach items="${getFishbyID}" var="p">
            <form action ="EditFishFish" enctype="multipart/form-data" method="post">
             <input type="hidden" name="fishID" value="${p.fishID}">
            <div id="content" style="height: 500px;">
                <h2>Fish Information</h2>
                <table>
                    <tr>
                        <td><label>Scientific Name:</label></td>
                        <td><input type="text" name="scName" value="${p.scName}" size="50" placeholder="Ambassis interupta"</td>
                    </tr>
                    <tr>
                        <td><label>Common Name:</label></td>
                        <td><input type="text" name="cmName" value="${p.cmName}" size="50" placeholder="Seriding"</td>
                    </tr>
                    <tr>
 
                        <table border="0" width="30%" cellpading="9">
                            <tr>
                                <td><label for="ordID">Order ID:</label></td>
                                <td><select id="OrderID" name="ordID">
                                        <option value="${p.ordID}">${p.ordID}</option>
                                        <option value="RD001">RD001</option>
                                        <option value="RD002">RD002</option>
                                        <option value="RD003">RD003</option>
                                        <option value="RD004">RD004</option>
                                    </select></td>
                                
                                <td><label for="OrderName">Order Name:</label></td>
                                <td><select id="OrderName" name="ordName" width="25">
                                        option value="${p.ordName}">${p.ordName}</option>
                                        <option value="Perciformes">Perciformes</option>
                                        <option value="Siluriformes">Siluriformes</option>
                                        <option value="Beloniformes">Beloniformes</option>
                                        <option value="Clupeiformes">Clupeiformes</option>
                                    </select></td>
                            </tr>
                            <tr>
                                <td><label for="FamilyID">Family ID:</label></td>
                                <td><select id="FamilyID" name="fmlyID" width="25">
                                        <option value="${p.fmlyID}">${p.fmlyID}</option>
                                        <option value="FM001">FM001</option>
                                        <option value="FM002">FM002</option>
                                        <option value="FM003">FM003</option>
                                        <option value="FM004">FM004</option>
                                    </select></td>
                                    
                                <td><label for="fmlyName">Family Name:</label></td>
                                <td><select id="fmlyName" name="fmlyName" width="25">
                                        <option value="${p.fmlyName}">${p.fmlyName}</option>
                                        <option value="Ambassidae">Ambassidae</option>
                                        <option value="Ariidae">Ariidae</option>
                                        <option value="Belonidae">Belonidae</option>
                                        <option value="Clupeidae">Clupeidae</option>
                                    </select></td>
                            </tr>
                            <tr>
                                <td><label for="CategoryID">Category ID:</label></td>
                                <td><select id="CategoryID" name="catID" width="25">
                                        <option value="${p.catID}">${p.catID}</option>
                                        <option value="ES-0123">ES-0123</option>
                                        <option value="MN-9872">MN-9872</option>
                                        <option value="FS-0654">FS-0654</option>
                                    </select></td>
                                    
                                <td><label for="catName">Category Name:</label></td>
                                <td><select id="catName" name="catName" width="25">
                                        <option value="${p.catName}">${p.catName}</option>
                                        <option value="Estuarine">Estuarine</option>
                                        <option value="Marine">Marine</option>
                                        <option value="Freshwater">Freshwater</option>
                                    </select></td>   
                                    <td><input type="file"name="fish_pic">${p.fish_pic}<br><br></td>
                            </tr>                            
                       
                        
                        <tr>
                            <td><input type="submit" value="Submit" /></td>
                            <td><input type="reset" value="Reset" /></td>
                        </tr>
                        </table>
                        
                        </div>
                    </form>
                       <div id="map"></div>

                </fi:forEach>
        
        <script>
      var map;
      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          center: {lat: -34.397, lng: 150.644},
          zoom: 8
        });
      }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBsro0Nhd0qwJkUA1GG1rbhuhlUtPRgYwA&callback=initMap" async defer></script>
    </body>
</html>
