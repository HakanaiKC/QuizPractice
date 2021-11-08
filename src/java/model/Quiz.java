/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author nxhai
 */
public class Quiz {
    protected int quiz_id;
    protected int creator_id;
    protected String name;
    protected String description;
    protected double price;
    protected Date last_Update;
    protected String creator_name;
    protected int questionNum;
    protected int count;
   protected int numberEnroll;
    protected float rate;
  

    public Quiz() {
    }

    public Quiz(int quiz_id, int creator_id, String name, String description, double price, Date last_Update, String creator_name, int questionNum) {
        this.quiz_id = quiz_id;
        this.creator_id = creator_id;
        this.name = name;
        this.description = description;
        this.price = price;
        this.last_Update = last_Update;
        this.creator_name = creator_name;
        this.questionNum = questionNum;
    }

    public int getQuiz_id() {
        return quiz_id;
    }

    public void setQuiz_id(int quiz_id) {
        this.quiz_id = quiz_id;
    }

    public int getCreator_id() {
        return creator_id;
    }

    public void setCreator_id(int creator_id) {
        this.creator_id = creator_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Date getLast_Update() {
        return last_Update;
    }

    public void setLast_Update(Date last_Update) {
        this.last_Update = last_Update;
    }

    public String getCreator_name() {
        return creator_name;
    }

    public void setCreator_name(String creator_name) {
        this.creator_name = creator_name;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public int getQuestionNum() {
        return questionNum;
    }

    public void setQuestionNum(int questionNum) {
        this.questionNum = questionNum;
    }

    public int getCount() {
        return count;
    }

    public int getNumberEnroll() {
        return numberEnroll;
    }

    public void setNumberEnroll(int numberEnroll) {
        this.numberEnroll = numberEnroll;
    }

    public float getRate() {
        return rate;
    }

    public void setRate(float rate) {
        this.rate = rate;
    }
    

//    @Override
//    public String toString() {
//        return "Quiz{" + "quiz_id=" + quiz_id + ", creator_id=" + creator_id + ", name=" + name + ", description=" + description + ", price=" + price + ", last_Update=" + last_Update + ", creator_name=" + creator_name + ", questionNum=" + questionNum + '}';
//    }

    @Override
    public String toString() {
        return "Quiz{" + "quiz_id=" + quiz_id + ", creator_id=" + creator_id + ", name=" + name + ", creator_name=" + creator_name + ", questionNum=" + questionNum + ", count=" + count + '}';
    }


    

    
}
