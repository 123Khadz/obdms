package com.obdms;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = "com.obdms")
public class OnlineBloodDonationManagementApplication {

	public static void main(String[] args) {
		SpringApplication.run(OnlineBloodDonationManagementApplication.class, args);
	}

}
