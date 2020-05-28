/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Dao.Datacontroller;
import Model.Fish;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author nadz
 */
@WebServlet(
        name = "EditFishFish",
        urlPatterns = { "/EditFishFish"},
        loadOnStartup = 1
)

@MultipartConfig(fileSizeThreshold=1024*1024*2, 
maxFileSize=1024*1024*10, 
maxRequestSize=1024*1024*50)
public class EditFishFish extends HttpServlet {
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException{
        
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try{
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
            String longs = request.getParameter("longs");
            String lat = request.getParameter("lat");
            String location = request.getParameter("location");
            Part filePart = request.getPart("fish_pic");
            
            String photo="";
            String path="C:\\xampp\\htdocs\\img";
            
            File file=new File(path);
            file.mkdir();
            String fileName = getSubmittedFileName(filePart);
            
            OutputStream out = null;
            InputStream filecontent = null;
            
            PrintWriter writer = response.getWriter();
            
            try{
                out = new FileOutputStream(new File(path + File.separator + fileName));
                filecontent = filePart.getInputStream();
             
                int read = 0;
                final byte[] bytes = new byte[8192];
                
                while((read = filecontent.read(bytes)) != -1){
                    out.write(bytes, 0, read);
                    photo=path+"/"+fileName;
                  
                    
                }
            
                
            Datacontroller dc = new Datacontroller();
            dc.fishEdit(fishID, scName, cmName, ordID,ordName,fmlyID,fmlyName,catID,catName,fileName,longs,lat,location);
            
            response.sendRedirect("/FormWisV2/AllFishList");
 
            }catch(IOException e){
                
            }
            
        }catch(IOException | ServletException e){
            
        }

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
    
    private static String getSubmittedFileName(Part part) {
        for (String cd : part.getHeader("content-disposition").split(";")) {
            if (cd.trim().startsWith("filename")) {
                String fileName = cd.substring(cd.indexOf('=') + 1).trim().replace("\"", "");
                return fileName.substring(fileName.lastIndexOf('/') + 1).substring(fileName.lastIndexOf('\\') + 1); // MSIE fix.
        }
    }
        return null;
   }

  
}
