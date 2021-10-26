/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.List;

/**
 *
 * @author Dell
 */
public class Exam {
    
    int quiz_id;
    int question_id;
    String question;
    String instruction;
    List<ExamResult> list_exam_result;
    boolean question_status;
    
    List<Option> list_option;
    List<Option> list_right_option;
    List<Option> list_choose_option;

    public Exam() {
    }

    public Exam(int question_id, String question, String instruction, List<ExamResult> list_exam_result, boolean question_status) {
        this.question_id = question_id;
        this.question = question;
        this.instruction = instruction;
        this.list_exam_result = list_exam_result;
        this.question_status = question_status;
    }

    public Exam(int question_id, String question, List<Option> list_option) {
        this.question_id = question_id;
        this.question = question;
        this.list_option = list_option;
    }
    
    public Exam(int quiz_id, int question_id, String question, String instruction, List<Option> list_option, List<Option> list_right_option, List<Option> list_choose_option) {
        this.quiz_id = quiz_id;
        this.question_id = question_id;
        this.question = question;
        this.instruction = instruction;
        this.list_option = list_option;
        this.list_right_option = list_right_option;
        this.list_choose_option = list_choose_option;
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

    public List<Option> getList_option() {
        return list_option;
    }

    public void setList_option(List<Option> list_option) {
        this.list_option = list_option;
    }

    public List<Option> getList_right_option() {
        return list_right_option;
    }

    public void setList_right_option(List<Option> list_right_option) {
        this.list_right_option = list_right_option;
    }

    public List<Option> getList_choose_option() {
        return list_choose_option;
    }

    public void setList_choose_option(List<Option> list_choose_option) {
        this.list_choose_option = list_choose_option;
    }

    public List<ExamResult> getList_exam_result() {
        return list_exam_result;
    }

    public void setList_exam_result(List<ExamResult> list_exam_result) {
        this.list_exam_result = list_exam_result;
    }

    public boolean isQuestion_status() {
        return question_status;
    }

    public void setQuestion_status(boolean question_status) {
        this.question_status = question_status;
    }

   

    @Override
    public String toString() {
        return "Exam{" + "quiz_id=" + quiz_id + ", question_id=" + question_id + ", question=" + question + ", instruction=" + instruction + ", list_option=" + list_option + ", list_right_option=" + list_right_option + ", list_choose_option=" + list_choose_option + '}';
    }
    
}
