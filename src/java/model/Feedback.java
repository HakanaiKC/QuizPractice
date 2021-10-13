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
    protected String feedback_id;
    protected String user_id;
    protected String quiz_id;
    protected String feedback;

    public Feedback(String feedback_id, String user_id, String quiz_id, String feedback) {
        this.feedback_id = feedback_id;
        this.user_id = user_id;
        this.quiz_id = quiz_id;
        this.feedback = feedback;
    }

    public Feedback() {
    }

    public String getFeedback_id() {
        return feedback_id;
    }

    public void setFeedback_id(String feedback_id) {
        this.feedback_id = feedback_id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getQuiz_id() {
        return quiz_id;
    }

    public void setQuiz_id(String quiz_id) {
        this.quiz_id = quiz_id;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    
}
