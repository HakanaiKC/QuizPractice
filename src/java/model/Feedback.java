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
public class Feedback {
    protected int feedback_id;
    protected int user_id;
    protected String user_name;
    protected int quiz_id;
    protected String feedback;
    protected String date;
    protected float rate;

    public Feedback() {
    }

    public Feedback(int feedback_id, int user_id, String user_name, int quiz_id, String feedback, String date, float rate) {
        this.feedback_id = feedback_id;
        this.user_id = user_id;
        this.user_name = user_name;
        this.quiz_id = quiz_id;
        this.feedback = feedback;
        this.date = date;
        this.rate = rate;
    }

  
    

    public int getFeedback_id() {
        return feedback_id;
    }

    public void setFeedback_id(int feedback_id) {
        this.feedback_id = feedback_id;
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

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public float getRate() {
        return rate;
    }

    public void setRate(float rate) {
        this.rate = rate;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    @Override
    public String toString() {
        return "Feedback{" + "feedback_id=" + feedback_id + ", user_id=" + user_id + ", quiz_id=" + quiz_id + ", feedback=" + feedback + ", date=" + date + ", rate=" + rate + '}';
    }

    

    
}
