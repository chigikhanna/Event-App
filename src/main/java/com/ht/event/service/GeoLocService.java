package com.ht.event.service;

import com.google.maps.GeoApiContext;
import com.google.maps.GeocodingApi;
import com.google.maps.model.GeocodingResult;
import com.ht.event.model.Event;
import jdk.nashorn.internal.parser.JSONParser;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;

public class GeoLocService {
    private static String readUrl(String urlString) throws Exception {
        BufferedReader reader = null;
        try {
            URL url = new URL(urlString);
            reader = new BufferedReader(new InputStreamReader(url.openStream()));
            StringBuffer buffer = new StringBuffer();
            int read;
            char[] chars = new char[1024];
            while ((read = reader.read(chars)) != -1)
                buffer.append(chars, 0, read);
            return buffer.toString();
        } finally {
            if (reader != null)
                reader.close();
        }
    }

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
