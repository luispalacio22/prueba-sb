package com.codility.service;

public class LegacyPaymentsService {

    public LegacyPaymentsService() {

    }

    public void processPayment(double amount) {
        System.out.println("Pago por: " + amount);
    }

    public void cancelPayment(int paymentId) {
        System.out.println("cancelado: " + paymentId);
    }
}
