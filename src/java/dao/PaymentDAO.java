/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import model.Option;
import model.Question;

/**
 *
 * @author bekim
 */
public class PaymentDAO extends DBContext {

    public double getRuby(int user_id) {
        try {
            String query = "select ruby from [User] where user_id=?";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, user_id);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                return rs.getDouble(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public double updateRuby(double ruby, int user_id) {
        String query = "Update [User] set ruby = ? where user_id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setDouble(1, ruby);
            ps.setInt(2, user_id);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public void insertInstruction(int user_id, int quiz_id, String question, String instruction) {
        try {
            String query = "insert into Bought_instruction(user_id,quiz_id,question,instruction) values(?,?,?,?)";
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, user_id);
            ps.setInt(2, quiz_id);
            ps.setString(3, question);
            ps.setString(4, instruction);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void insertOption(int question_id, List<Option> optionSave) {
        try {
            String query = "insert into Bought_option(question_id,option_id,option_content,right_option) values(?,?,?,?)";
            PreparedStatement pd = connection.prepareStatement(query);
            for (Option option : optionSave) {
                pd.setInt(1, question_id);
                pd.setInt(2, option.getOption_id());
                pd.setString(3, option.getOption_content());
                pd.setInt(4, option.getRight_option());
                pd.executeUpdate();
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public int getLastID(int user_id) {
        try {
            String query = "select top 1 question_id from bought_instruction where user_id = ? order by question_id desc";
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
    
    public static void main(String[] args) {
        PaymentDAO p = new PaymentDAO();
    }
}
