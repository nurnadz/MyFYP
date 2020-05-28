<%-- 
    Document   : ManageAddFish
    Created on : Feb 22, 2020, 12:43:49 AM
    Author     : nadz
--%>
<%@page import="Dao.Datacontroller"%>
<%@page import="Model.Fish"%>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page import="java.util.*, java.io.*" %>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<%@ page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
                String scName = request.getParameter("scName");
                String cmName = "";
                String ordID = request.getParameter("ordID");
                String ordName = request.getParameter("ordName");
                String fmlyID = request.getParameter("fmlyID");
                String fmlyName = request.getParameter("fmlyName");
                String catID = request.getParameter("catID");
                String catName = request.getParameter("catName");
                String fish_pic = "";
                String fish_pic_name = "";
                 System.out.println("POST" + ordName);
          
            try{
            
              
                boolean isMultipart = ServletFileUpload.isMultipartContent(request);
                if(!isMultipart){
  
                    
                }else{
             
                    
                    FileItemFactory fileItemFactory = new DiskFileItemFactory();
                    ServletFileUpload upload = new ServletFileUpload(fileItemFactory);
                    List items = null;
                    try {
                        items = upload.parseRequest(request);
                    } catch (FileUploadException e) {
                        e.getMessage();
                    }
                    Iterator itr = items.iterator();
                    while (itr.hasNext()){
                      

                        FileItem item = (FileItem) itr.next();
                        if (item.isFormField()){
                            String name = item.getFieldName();
                            String value = item.getString();
                            if (name.equals("fish_pic")){
                                fish_pic = value;
                            }
                        }else{
                            try{
                                fish_pic_name = item.getName();
                                  cmName = request.getParameter("cmName");
                                File file = new File(config.getServletContext().getRealPath("/") + "/images" +fish_pic_name); 
                                item.write(file);
                            }catch(Exception e){
                                out.println("Error" + e.getMessage());
                            }
                        }
                    }
                    try{
                        Fish fish = new Fish(0,"hhhh",cmName,ordID,ordName,fmlyID,fmlyName,catID,catName,fish_pic_name);
                        Datacontroller dc = new Datacontroller();
                        dc.addFish(fish);
                        System.out.println("Inserting error" + cmName);
            
                        response.sendRedirect("/FormWisV2/AllFishList");
                    }catch(Exception el){
                        out.println("Inserting error" + el.getMessage());
                    }
                }
               
            }catch(Exception e){
                out.println(e.getMessage());
            }
         
   
            
        
        %>
        
         
    </body>
</html>
