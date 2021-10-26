/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Category;
import org.apache.jasper.tagplugins.jstl.ForEach;

/**
 *
 * @author nxhai
 */
public class CategoryDAO extends DBContext {
    
    public List<Category> getCategory() {
        List<Category> list = new ArrayList<>();
        QuizDAO dao = new QuizDAO();
        try {
            String query = "select * from Category";// lay quiz_id, 
            PreparedStatement pd = connection.prepareStatement(query);
            ResultSet rs = pd.executeQuery();
            
            while (rs.next()) {
                Category c = new Category();
                int category_id = rs.getInt("category_id");
                String category_name = rs.getString("category_name");
                c.setCategory_id(category_id);
                c.setCategory_name(category_name);
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public void addCategoryForQuiz(int quiz_id, String category_id) {
        String query = "insert into Category_quiz(quiz_id, category_id) values(?, ?)";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, quiz_id);
            ps.setString(2, category_id);
            ps.executeUpdate();
            
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public List<Category> getCategoryIDForQuiz(int quiz_id) {
        List<Category> list = new ArrayList<>();
        QuizDAO dao = new QuizDAO();
        try {
            String query = "select cq.category_id from Category_quiz cq join Category c on\n"
                    + "Cq.category_id=c.category_id where quiz_id = ?  ";// lay quiz_id, 
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, quiz_id);
            ResultSet rs = pd.executeQuery();
            
            while (rs.next()) {
                Category c = new Category();
                int category_id = rs.getInt("category_id");
                
                c.setCategory_id(category_id);
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<Category> getCategoryNameForQuiz(int quiz_id) {
        List<Category> list = new ArrayList<>();
        QuizDAO dao = new QuizDAO();
        try {
            String query = "select c.category_name from Category_quiz cq join Category c on \n"
                    + "Cq.category_id=c.category_id where quiz_id = ? ";// lay quiz_id, 
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, quiz_id);
            ResultSet rs = pd.executeQuery();
            
            while (rs.next()) {
                Category c = new Category();
                String category_name = rs.getString("category_name");
                
                c.setCategory_name(category_name);
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public void deleteCategory(int quiz_id) {
        String query = "delete from Category_quiz where quiz_id =?";
        
        try {
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, quiz_id);
            pd.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public static void main(String[] args) {
        CategoryDAO d = new CategoryDAO();
        
        System.out.println(d.getCategoryNameForQuiz(23));
    }
    
}
