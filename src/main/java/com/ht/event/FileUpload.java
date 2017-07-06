package com.ht.event;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.io.File;


public class FileUpload extends HttpServlet {
        private final String uploadDirectory = "C:\\Users\\chigi\\Pictures\\Test";

//    @Override
//    @RequestMapping(value = "/event/add", method= RequestMethod.POST)
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //process only if multipart content
        if (ServletFileUpload.isMultipartContent(request)) {
            try {
                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
                for (FileItem item : multiparts) {
                    if (!item.isFormField()) {
                        String name = new File(item.getName()).getName();
                        item.write(new File(uploadDirectory + File.separator + name));
                    }
                }
                //File uploaded successfully
//                request.setAttribute("message", "File Uploaded Successfully");
            } catch (Exception ex) {
//                request.setAttribute("message", "File Upload Failed due to " + ex);
            }
        } else {
//            request.setAttribute("message", "Sorry this Servlet only handles file upload request");
        }
//        request.getRequestDispatcher("/result.jsp").forward(request, response);
    }
}
