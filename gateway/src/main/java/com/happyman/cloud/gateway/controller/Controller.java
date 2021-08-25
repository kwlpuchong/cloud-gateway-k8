package com.happyman.cloud.gateway.controller;

import java.net.InetAddress;
import java.net.UnknownHostException;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {
    @GetMapping
	public String _default() {
		String host = "";
        try {
            host = InetAddress.getLocalHost().getHostName();
        }
        catch (UnknownHostException exception) {
        }

        return host;
	}
}
