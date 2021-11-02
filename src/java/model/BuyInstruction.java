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
public class BuyInstruction {
    private int user_id;
    private int quiz_id;
    private int question_id;
    String question;
    String instruction;

    public BuyInstruction() {
    }

    public BuyInstruction(int user_id, int quiz_id, int question_id, String question, String instruction) {
        this.user_id = user_id;
        this.quiz_id = quiz_id;
        this.question_id = question_id;
        this.question = question;
        this.instruction = instruction;
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

    public int getQuestion_id() {
        return question_id;
    }

    public void setQuestion_id(int question_id) {
        this.question_id = question_id;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getInstruction() {
        return instruction;
    }

    public void setInstruction(String instruction) {
        this.instruction = instruction;
    }

    @Override
    public String toString() {
        return "BuyInstruction{" + "user_id=" + user_id + ", quiz_id=" + quiz_id + ", question_id=" + question_id + ", question=" + question + ", instruction=" + instruction + '}';
    }
   
}
