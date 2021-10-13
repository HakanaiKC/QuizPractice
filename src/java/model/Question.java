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
public class Question {
    private int question_id;
    public String question;
    public String instruction;

    public Question(int question_id, String question, String instruction) {
        this.question_id = question_id;
        this.question = question;
        this.instruction = instruction;
    }

    public Question() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
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
        return "Question{" + "question_id=" + question_id + ", question=" + question + ", instruction=" + instruction + '}';
    }
        
}
