package com.ht.event.service;

import com.google.maps.GeoApiContext;
import com.google.maps.GeocodingApi;
import com.google.maps.model.GeocodingResult;
import com.ht.event.model.Event;
import org.springframework.stereotype.Service;

@Service
public class GeoLocService {

    public double[] getGeoLocations(String location) throws Exception {
        GeoApiContext context = new GeoApiContext().setApiKey("AIzaSyAB8O9iXUkHDvWsPnJ8AM-GJ5KcIobOMxU");
        GeocodingResult[] results = GeocodingApi.geocode(context, location).await();
        return new double[]{results[0].geometry.location.lat, results[0].geometry.location.lng};
    }
}
