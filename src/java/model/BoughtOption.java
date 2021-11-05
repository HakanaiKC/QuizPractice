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
public class BoughtOption {
    private int question_id;
    private int option_id;
    private String option_content;
    private int right_option;

    public BoughtOption(int question_id, int option_id, String option_content, int right_option) {
        this.question_id = question_id;
        this.option_id = option_id;
        this.option_content = option_content;
        this.right_option = right_option;
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

    public String getOption_content() {
        return option_content;
    }

    public void setOption_content(String option_content) {
        this.option_content = option_content;
    }

    public int getRight_option() {
        return right_option;
    }

    public void setRight_option(int right_option) {
        this.right_option = right_option;
    }
    
    
}
