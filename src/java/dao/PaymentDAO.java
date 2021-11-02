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
import model.BuyInstruction;

/**
 *
 * @author bekim
 */
public class PaymentDAO extends DBContext{
    public List<BuyInstruction> getBoughtInstruction(int user_id){        
        List<BuyInstruction> list = new ArrayList<>();
        try {
            String query = "select * from Bought_instruction where user_id=?;";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, user_id);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                BuyInstruction buy = new BuyInstruction();
                int quizId = rs.getInt("question_id");
                int questionId = rs.getInt("question_id");
                String question = rs.getString("question");
                String intruction = rs.getString("intruction");
                buy.setQuiz_id(quizId);
                buy.setQuestion_id(questionId);
                buy.setQuestion(question);
                buy.setInstruction(intruction);
                list.add(buy);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public double checkRuby(int user_id){        
        try {
            String query = "select ruby from [User] where user_id = ?";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, user_id);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;        
    }
}
