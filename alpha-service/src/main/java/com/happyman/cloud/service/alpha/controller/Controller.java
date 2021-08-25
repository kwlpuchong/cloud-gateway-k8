package com.happyman.cloud.service.alpha.controller;

import java.net.InetAddress;
import java.net.UnknownHostException;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/alpha")
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
