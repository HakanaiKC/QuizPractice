/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author nxhai
 */
public class Payment {
    int payment_id;
    int user_id;
    String date_of_payment;
    double num_of_ruby;
    int money;
    boolean status;
    String trading_code;
    String phone_number;
    String user_name;

    public Payment() {
    }

    public Payment(int payment_id, int user_id, String date_of_payment, double num_of_ruby, int money, boolean status, String trading_code, String phone_number) {
        this.payment_id = payment_id;
        this.user_id = user_id;
        this.date_of_payment = date_of_payment;
        this.num_of_ruby = num_of_ruby;
        this.money = money;
        this.status = status;
        this.trading_code = trading_code;
        this.phone_number = phone_number;
    }
    
     public Payment(int payment_id, int user_id, String date_of_payment, double num_of_ruby, int money, boolean status, String trading_code, String phone_number, String user_name) {
        this.payment_id = payment_id;
        this.user_id = user_id;
        this.date_of_payment = date_of_payment;
        this.num_of_ruby = num_of_ruby;
        this.money = money;
        this.status = status;
        this.trading_code = trading_code;
        this.phone_number = phone_number;
        this.user_name = user_name;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }
     

    public int getPayment_id() {
        return payment_id;
    }

    public void setPayment_id(int payment_id) {
        this.payment_id = payment_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getDate_of_payment() {
        return date_of_payment;
    }

    public void setDate_of_payment(String date_of_payment) {
        this.date_of_payment = date_of_payment;
    }

    public double getNum_of_ruby() {
        return num_of_ruby;
    }

    public void setNum_of_ruby(double num_of_ruby) {
        this.num_of_ruby = num_of_ruby;
    }

    public int getMoney() {
        return money;
    }

    public void setMoney(int money) {
        this.money = money;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    public String getTrading_code() {
        return trading_code;
    }

    public void setTrading_code(String trading_code) {
        this.trading_code = trading_code;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    @Override
    public String toString() {
        return "Payment{" + "payment_id=" + payment_id + ", user_id=" + user_id + ", date_of_payment=" + date_of_payment + ", num_of_ruby=" + num_of_ruby + ", money=" + money + ", status=" + status + ", trading_code=" + trading_code + ", phone_number=" + phone_number + ", user_name=" + user_name + '}';
    }

    
      
    
}
