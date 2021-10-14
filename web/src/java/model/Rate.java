/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author bekim
 */
public class Rate {
    protected int rate_id;
    protected int user_id;
    protected int quiz_id;
    protected int rate;

    public Rate(int rate_id, int user_id, int quiz_id, int rate) {
        this.rate_id = rate_id;
        this.user_id = user_id;
        this.quiz_id = quiz_id;
        this.rate = rate;
    }

    public int getRate_id() {
        return rate_id;
    }

    public void setRate_id(int rate_id) {
        this.rate_id = rate_id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public int getQuiz_id() {
        return quiz_id;
    }

    public void setQuiz_id(int quiz_id) {
        this.quiz_id = quiz_id;
    }

    public int getRate() {
        return rate;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }

    @Override
    public String toString() {
        return "Rate{" + "rate_id=" + rate_id + ", user_id=" + user_id + ", quiz_id=" + quiz_id + ", rate=" + rate + '}';
    }
    
    
}
