package com.ht.event.service;

import com.google.maps.GeoApiContext;
import com.google.maps.GeocodingApi;
import com.google.maps.model.GeocodingResult;
import com.ht.event.model.Event;

public class GeoLocService {
    public double getlat(Event event) throws Exception {

        String location = event.getAddress() + " " + event.getCity() + " " + event.getCountry() + " " + event.getPincode();
        GeoApiContext context = new GeoApiContext().setApiKey("AIzaSyAB8O9iXUkHDvWsPnJ8AM-GJ5KcIobOMxU");
        GeocodingResult[] results = GeocodingApi.geocode(context, location).await();
        double lat = results[0].geometry.location.lat;

        return lat;
    }
    public double getlong(Event event) throws Exception {

        String location = event.getAddress() + " " + event.getCity() + " " + event.getCountry() + " " + event.getPincode();
        GeoApiContext context = new GeoApiContext().setApiKey("AIzaSyAB8O9iXUkHDvWsPnJ8AM-GJ5KcIobOMxU");
        GeocodingResult[] results = GeocodingApi.geocode(context, location).await();
        double lng = results[0].geometry.location.lng;

        return lng;
    }


}
