package com.ht.event.controller;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.ht.event.model.Category;
import com.ht.event.model.Event;
import com.ht.event.model.EventDTO;
import com.ht.event.service.EventService;
import com.ht.event.service.GeoLocService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import javax.servlet.http.HttpServlet;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.net.URL;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.UUID;

@Slf4j
@Controller
@RequestMapping(value = "/event")
public class EventController extends HttpServlet {

    @Autowired
    private EventService eventService;

    @Autowired
    private GeoLocService geoLocService;

    @RequestMapping(value = "/add", method = RequestMethod.GET)
    public ModelAndView addEventPage() {
        ModelAndView modelAndView = new ModelAndView("addevent");
        modelAndView.addObject("event", new Event());
        return modelAndView;
    }

    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public ModelAndView addingEvent(@ModelAttribute Event event, @RequestParam("category") Set<String> category , @RequestParam("file") MultipartFile file) throws Exception {

        if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();

                // Creating the directory to store file

                String rootPath = System.getProperty("catalina.home") + "\\img";
                String uuid = UUID.randomUUID().toString();
                File dir = new File(rootPath + File.separator + uuid + ".jpeg");
//                if (!dir.exists())
//                    dir.mkdirs();
                // Create the file on server
                File serverFile = new File(dir.getAbsolutePath() + File.separator);
                BufferedOutputStream stream = new BufferedOutputStream(
                        new FileOutputStream(serverFile));
                stream.write(bytes);
                stream.close();
                event.setImgURL(uuid + ".jpeg");

            } catch (Exception e) {
                log.error(e.getMessage(), e);
            }
        }


        String location = event.getAddress() + " " + event.getCity() + " " + event.getCountry() + " " + event.getPincode();

        double[] geoLocations = geoLocService.getGeoLocations(location);
        event.setLatitude((float) geoLocations[0]);
        event.setLongitude((float) geoLocations[1]);


//        event.setCategory(category);
        eventService.addEvent(event);
        return new ModelAndView("home");
    }

    @RequestMapping(value = "/list")
    public ModelAndView listOfEvent() {
        ModelAndView modelAndView = new ModelAndView("listevents");
        EventDTO eventDTO = new EventDTO();
        eventDTO.setSize(5);
        eventDTO.setStart(0);
        List<Event> events = eventService.getEvents(eventDTO);
        modelAndView.addObject("events", events);
        return modelAndView;
    }

    @RequestMapping(value = "/search")
    public ModelAndView endpoint(@RequestParam("size") String size, @RequestParam("page") String page) {
        ModelAndView modelAndView = new ModelAndView("include/event-listings");
        EventDTO eventDTO = new EventDTO();
        eventDTO.setSize(Integer.parseInt(size));
        eventDTO.setStart(Integer.parseInt(page));
        modelAndView.addObject("events", eventService.getEvents(eventDTO));
        return modelAndView;
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
    public ModelAndView editEventPage(@PathVariable String id) {
        ModelAndView modelAndView = new ModelAndView("editevent");
        Event event = eventService.getEvent(Integer.parseInt(id));
        modelAndView.addObject("event", event);
        return modelAndView;
    }

    @RequestMapping(value = "/edit/{id}", method = RequestMethod.POST)
    public ModelAndView editingEvent(@ModelAttribute Event event) {

        ModelAndView modelAndView = new ModelAndView("home");

        eventService.updateEvent(event);

        String message = "Event details were successfully edited.";
        modelAndView.addObject("message", message);

        return modelAndView;
    }

    @RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
    public ModelAndView deleteEvent(@PathVariable String id) {
        ModelAndView modelAndView = new ModelAndView("home");
        eventService.deleteEvent(Integer.parseInt(id));
        modelAndView.addObject("message", "Successfully deleted.");
        return modelAndView;
    }
}
