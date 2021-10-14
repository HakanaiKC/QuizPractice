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
public class Question {
     int question_id;
     int quiz_id;
     String question;
     String instruction;

    public Question() {
    }

    public Question(int question_id, int quiz_id, String question, String instruction) {
        this.question_id = question_id;
        this.quiz_id = quiz_id;
        this.question = question;
        this.instruction = instruction;
    }

    public int getQuestion_id() {
        return question_id;
    }

    public void setQuestion_id(int question_id) {
        this.question_id = question_id;
    }

    public int getQuiz_id() {
        return quiz_id;
    }

    public void setQuiz_id(int quiz_id) {
        this.quiz_id = quiz_id;
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
        return "Question{" + "question_id=" + question_id + ", quiz_id=" + quiz_id + ", question=" + question + ", instruction=" + instruction + '}';
    }
     
     
}
