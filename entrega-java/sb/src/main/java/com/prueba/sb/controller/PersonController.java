package com.prueba.sb.controller;

import com.prueba.sb.model.Person;
import com.prueba.sb.service.PersonService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/person")
@AllArgsConstructor
public class PersonController {

    private final PersonService personService;

    @GetMapping
    public List<Person> getAllPerson() {
        return personService.getAllPerson();
    }

    @PostMapping
    public Person createPerson(@RequestBody Person person){
        return personService.savePerson(person);
    }
}