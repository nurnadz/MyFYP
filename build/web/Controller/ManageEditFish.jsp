<%-- 
    Document   : ManageEditFish
    Created on : 14 March, 2020, 12:15:45 AM
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
            String idtmp = request.getParameter("fishID");
            int fishID = Integer.parseInt(idtmp);
            String scName = request.getParameter("scName");
            String cmName = request.getParameter("cmName");
            String ordID = request.getParameter("ordID");
            String ordName = request.getParameter("ordName");
            String fmlyID = request.getParameter("fmlyID");
            String fmlyName = request.getParameter("fmlyName");
            String catID = request.getParameter("catID");
            String catName = request.getParameter("catName");
            String fish_pic = request.getParameter("fish_pic");
           
            Datacontroller dc = new Datacontroller();
            dc.fishEdit(fishID, scName, cmName, ordID,ordName,fmlyID,fmlyName,catID,catName,fish_pic);
            
            response.sendRedirect("/FormWisV2/AllFishList");
        %>
    </body>
</html>
