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

    public void insertInstruction(int user_id, List<Question> questionSave) {
        try {
            String query = "SET IDENTITY_INSERT Bought_instruction ON\n"
                    + "insert into Bought_instruction(user_id,quiz_id,question_id,question,instruction) values(?,?,?,?,?)\n"
                    + "SET IDENTITY_INSERT Bought_instruction OFF";
            PreparedStatement ps = connection.prepareStatement(query);
            for (Question question : questionSave) {
                ps.setInt(1, user_id);
                ps.setInt(2, question.getQuiz_id());
                ps.setInt(3, question.getQuestion_id());
                ps.setString(4, question.getQuestion());
                ps.setInt(5, question.getCheckQuestion());
                ps.executeUpdate();
            }
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

    public static void main(String[] args) {
        PaymentDAO p = new PaymentDAO();
        System.out.println(p.updateRuby(910, 3));
        System.out.println(p.getRuby(3));
    }
}
