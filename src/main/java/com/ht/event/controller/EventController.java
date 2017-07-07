package com.ht.event.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import com.google.gson.Gson;
import com.ht.event.model.Event;
import com.ht.event.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServlet;
import static javax.swing.text.StyleConstants.ModelAttribute;

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

    @RequestMapping(value = "/add", method=RequestMethod.POST)
    public String addingEvent(@ModelAttribute Event event ,@RequestParam("image") MultipartFile file){
        if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();

                // Creating the directory to store file
                String rootPath = "C:\\Users\\chigi\\Pictures\\Test";

                String name = event.getName();
                File dir = new File(rootPath + File.separator + name +".jpeg");
//                if (!dir.exists())
//                    dir.mkdirs();

                // Create the file on server
                File serverFile = new File(dir.getAbsolutePath() + File.separator);
                BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();

            } catch (Exception e) {

            }
        }
    ModelAndView modelAndView=new ModelAndView("home");
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
//        String json = new Gson().toJson(modelAndView);
//        return json;
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
