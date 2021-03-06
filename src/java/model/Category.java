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
public class Category {
   private int category_id;
    String category_name;
    private int checkCategory;

    public Category() {
    }

    public Category(int category_id, String category_name) {
        this.category_id = category_id;
        this.category_name = category_name;
    }

    public Category(int category_id, String category_name, int checkCategory) {
        this.category_id = category_id;
        this.category_name = category_name;
        this.checkCategory = checkCategory;
    }
    

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public int getCheckCategory() {
        return checkCategory;
    }

    public void setCheckCategory(int checkCategory) {
        this.checkCategory = checkCategory;
    }
    
   

    public String getCategory_name() {
        return category_name;
    }

    public void setCategory_name(String category_name) {
        this.category_name = category_name;
    }

    @Override
    public String toString() {
        return "Category{" + "category_id=" + category_id + ", category_name=" + category_name + ", checkCategory=" + checkCategory + '}';
    }

   
    
    
}
