/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Dell
 */
public class ExamResult {
    private int question_id;
    private int option_id;
    private String option_content;
    private int right_option;
    private int option_status;

    public ExamResult(int option_id, String option_content, int right_option, int option_status) {
        this.option_id = option_id;
        this.option_content = option_content;
        this.right_option = right_option;
        this.option_status = option_status;
    }

    
    public ExamResult() {
    }

    public ExamResult(int question_id, int option_id, int right_option, int option_status) {
        this.question_id = question_id;
        this.option_id = option_id;
        this.right_option = right_option;
        this.option_status = option_status;
    }

    public int getQuestion_id() {
        return question_id;
    }

    public void setQuestion_id(int question_id) {
        this.question_id = question_id;
    }

    public int getOption_id() {
        return option_id;
    }

    public void setOption_id(int option_id) {
        this.option_id = option_id;
    }

    public int getRight_option() {
        return right_option;
    }

    public void setRight_option(int right_option) {
        this.right_option = right_option;
    }

    public int getOption_status() {
        return option_status;
    }

    public void setOption_status(int option_status) {
        this.option_status = option_status;
    }

    public String getOption_content() {
        return option_content;
    }

    public void setOption_content(String option_content) {
        this.option_content = option_content;
    }

    @Override
    public String toString() {
        return "ExamResult{" + "question_id=" + question_id + ", option_id=" + option_id + ", right_option=" + right_option + ", option_status=" + option_status + '}';
    }
    
}
