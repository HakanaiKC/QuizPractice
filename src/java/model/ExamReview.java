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
public class ExamReview {
    private int exam_id;
    private int user_id;
    private int quiz_id;
    private String quiz_name;
    private float mark;
    private int correct_answers;
    private int num_of_question;
    private String date;
    private String time;

    public ExamReview() {
    }

    public ExamReview(int exam_id, int user_id, int quiz_id, String quiz_name, float mark, int correct_answers, int num_of_question, String date, String time) {
        this.exam_id = exam_id;
        this.user_id = user_id;
        this.quiz_id = quiz_id;
        this.quiz_name = quiz_name;
        this.mark = mark;
        this.correct_answers = correct_answers;
        this.num_of_question = num_of_question;
        this.date = date;
        this.time = time;
    }

    public int getExam_id() {
        return exam_id;
    }

    public void setExam_id(int exam_id) {
        this.exam_id = exam_id;
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

    public String getQuiz_name() {
        return quiz_name;
    }

    public void setQuiz_name(String quiz_name) {
        this.quiz_name = quiz_name;
    }

    public float getMark() {
        return mark;
    }

    public void setMark(float mark) {
        this.mark = mark;
    }

    public int getCorrect_answers() {
        return correct_answers;
    }

    public void setCorrect_answers(int correct_answers) {
        this.correct_answers = correct_answers;
    }

    public int getNum_of_question() {
        return num_of_question;
    }

    public void setNum_of_question(int num_of_question) {
        this.num_of_question = num_of_question;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "ExamReview{" + "exam_id=" + exam_id + ", user_id=" + user_id + ", quiz_id=" + quiz_id + ", quiz_name=" + quiz_name + ", mark=" + mark + ", correct_answers=" + correct_answers + ", num_of_question=" + num_of_question + ", date=" + date + ", time=" + time + '}';
    }
    
}
