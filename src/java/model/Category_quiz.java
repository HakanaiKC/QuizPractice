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
public class Category_quiz {
    private int quiz_id;
    private int category_id;

    public Category_quiz() {
    }

    public Category_quiz(int quiz_id, int category_id) {
        this.quiz_id = quiz_id;
        this.category_id = category_id;
    }

    public int getQuiz_id() {
        return quiz_id;
    }

    public void setQuiz_id(int quiz_id) {
        this.quiz_id = quiz_id;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    @Override
    public String toString() {
        return "Category_quiz{" + "quiz_id=" + quiz_id + ", category_id=" + category_id + '}';
    }
    
    
    
}
