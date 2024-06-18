package com.codility.configuration;


import com.codility.service.MaintenanceService;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration
public class MaintenanceConfig {

    @Bean
    public MaintenanceService maintenanceService() {
        return new MaintenanceService();
    }
}