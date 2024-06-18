package com.codility.configuration;

import com.codility.repository.UsersRepository;
import com.codility.service.LegacyPaymentsService;
import org.springframework.context.annotation.*;

@Configuration
@ComponentScan(basePackages = "com.codility.utils")
@Import(MaintenanceConfig.class)
@PropertySource("classpath:application.properties")
public class SystemConfig {

    @Bean(initMethod = "initialize")
    public UsersRepository usersRepository() {
        return new UsersRepository();
    }

    @Bean(name = "paymentsService")
    public LegacyPaymentsService legacyPaymentsService() {
        return new LegacyPaymentsService();
    }
}
