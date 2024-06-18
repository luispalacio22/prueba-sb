package com.codility.repository;

public class UsersRepository {

    public UsersRepository() {

    }

    public void initialize() {
        System.out.println("UsersRepository inicializado.");
    }


    public void addUser(String user) {
        System.out.println("Usuario agregado: " + user);
    }

    public void removeUser(String user) {
        System.out.println("Usuario removido: " + user);
    }
}
