package com.ht.event.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;

import com.google.gson.Gson;
import com.ht.event.model.Event;

import com.ht.event.service.EventService;
import com.sun.org.apache.xpath.internal.operations.Mod;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value="/event")
public class EventController extends HttpServlet {

    @Autowired
    private EventService eventService;

    @RequestMapping(value = "/form", method=RequestMethod.GET)
    public ModelAndView addEventPage() {
        ModelAndView modelAndView = new ModelAndView("addevent");
        modelAndView.addObject("event",new Event());
        return modelAndView;
    }

    //    --------------------------------------------------

//    @RequestMapping(value = "/add", method= RequestMethod.POST)
//    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//        String uploadDirectory = "C:\\Users\\chigi\\Pictures\\Test";
//
//        if (ServletFileUpload.isMultipartContent(request)) {
//            try {
//                List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);
//                for (FileItem item : multiparts) {
//                    if (!item.isFormField()) {
//                        String name = new File(item.getName()).getName();
//                        item.write(new File(uploadDirectory + File.separator + name));
//                    }
//                }
////               request.setAttribute("message", "File Uploaded Successfully");
//            } catch (Exception ex) {
////                request.setAttribute("message", "File Upload Failed due to " + ex);
//            }
//        } else {
////            request.setAttribute("message", "Sorry this Servlet only handles file upload request");
//        }
////        request.getRequestDispatcher("/result.jsp").forward(request, response);
//    }

    //    --------------------------------------------------


    @RequestMapping(value = "/add", method=RequestMethod.POST)
    public String addingEvent(@ModelAttribute Event event){

        ModelAndView modelAndView=new ModelAndView("addevent");
        eventService.addEvent(event);

        String message="Event added.";
        modelAndView.addObject("message",message);

        String json = new Gson().toJson(modelAndView);
        return json;
    }

    @RequestMapping(value = "/list")
    public ModelAndView listOfEvent(){
        ModelAndView modelAndView=new ModelAndView("listevents");

        List<Event> events=eventService.getEvents();
        modelAndView.addObject("events",events);
        return modelAndView;
    }

    @RequestMapping(value="/edit/{id}", method=RequestMethod.GET)
    public ModelAndView editEventPage(@PathVariable String id) {
        ModelAndView modelAndView = new ModelAndView("editevent");
        Event event = eventService.getEvent(Integer.parseInt(id));
        modelAndView.addObject("event",event);
        return modelAndView;
    }
    @RequestMapping(value="/edit/{id}", method=RequestMethod.POST)
    public ModelAndView editingEvent(@ModelAttribute Event event) {

        ModelAndView modelAndView = new ModelAndView("home");

        eventService.updateEvent(event);

        String message = "Event details were successfully edited.";
        modelAndView.addObject("message", message);

        return modelAndView;
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView deleteEvent(@PathVariable String id){
        ModelAndView modelAndView=new ModelAndView("home");
        eventService.deleteEvent(Integer.parseInt(id));
        String message="Successfully deleted.";
        modelAndView.addObject("message",message);
        return modelAndView;
    }
}
