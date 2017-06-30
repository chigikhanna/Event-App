package com.ht.event.service;

import com.ht.event.model.GeoLoc;
import com.maxmind.geoip2.DatabaseReader;
import com.maxmind.geoip2.exception.GeoIp2Exception;
import com.maxmind.geoip2.model.CityResponse;

import java.io.File;
import java.io.IOException;
import java.net.InetAddress;

/**
 * Created by tanvigupta on 30/06/17.
 */
public class GeoLocService {
    private DatabaseReader dbReader;

    public GeoLocService() throws IOException {
        File database = new File("your-mmdb-location");
        dbReader = new DatabaseReader.Builder(database).build();
    }

    public GeoLoc getLocation(String ip)
            throws IOException, GeoIp2Exception {

        InetAddress ipAddress = InetAddress.getByName(ip);
        CityResponse response = dbReader.city(ipAddress);

        String cityName = response.getCity().getName();
        String latitude =
                response.getLocation().getLatitude().toString();
        String longitude =
                response.getLocation().getLongitude().toString();
        return new GeoLoc(ip, cityName, latitude, longitude);
    }
}
