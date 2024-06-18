package com.prueba.sb.service;

import com.prueba.sb.model.Person;

import java.util.List;

public interface PersonService {

    List<Person> getAllPerson();
    Person savePerson(Person person);
}
