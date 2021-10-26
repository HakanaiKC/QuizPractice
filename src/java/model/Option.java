/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.List;

/**
 *
 * @author nxhai
 */
public class Option {
    int option_id;
    int question_id;
    int quiz_id;
    int right_option;
    String option_content;
    int option_status;

    public Option() {
    }

    public Option(int option_id, int question_id, int quiz_id, int right_option, String option_content, int option_status) {
        this.option_id = option_id;
        this.question_id = question_id;
        this.quiz_id = quiz_id;
        this.right_option = right_option;
        this.option_content = option_content;
        this.option_status = option_status;
    }
    
    public Option(int option_id) {
        this.option_id = option_id;
    }
    public Option(int option_id, String option_content, int right_option){
    this.option_id = option_id;
    this.option_content = option_content;
    this.right_option = right_option;
    }
    public Option(int option_id, int question_id, int quiz_id, int right_option, String option_content) {
        this.option_id = option_id;
        this.question_id = question_id;
        this.quiz_id = quiz_id;
        this.right_option = right_option;
        this.option_content = option_content;
    }

    public int getOption_id() {
        return option_id;
    }

    public void setOption_id(int option_id) {
        this.option_id = option_id;
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

    public int getRight_option() {
        return right_option;
    }

    public void setRight_option(int right_option) {
        this.right_option = right_option;
    }

    public String getOption_content() {
        return option_content;
    }

    public void setOption_content(String option_content) {
        this.option_content = option_content;
    }
    
    public int getOption_status() {
        return option_status;
    }

    public void setOption_status(int option_status) {
        this.option_status = option_status;
    }
//     public List<Option> getAllOption(int quesId,List<Option> list ){
//         for (Option option : list) {
//             if (option.question_id==quesId) {
//                 list.remove(option);
//             }
//         }
//     return list;
//     }
    
    @Override
    public String toString() {
        return "Option{" + "option_id=" + option_id + ", question_id=" + question_id + ", quiz_id=" + quiz_id + ", right_option=" + right_option + ", option_content=" + option_content + '}';
    }
    
    
}
