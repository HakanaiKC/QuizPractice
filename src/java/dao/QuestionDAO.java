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
import model.Option;
import model.Question;
import model.Quiz;

/**
 *
 * @author Dell
 */
public class QuestionDAO extends DBContext {

    /**
     *
     * @param quizId
     * @return
     */
    public List<Question> getAllQuestion(int quizId) {
        List<Question> list = new ArrayList<>();
        try {
            String query = "select* from Question\n"
                    + "where quiz_id= ? ";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, quizId);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                Question q = new Question();
                int questionId = rs.getInt("question_id");
                String question = rs.getString("question");
                String intruction = rs.getString("intruction");
                q.setQuiz_id(quizId);
                q.setQuestion_id(questionId);
                q.setQuestion(question);
                q.setInstruction(intruction);
                list.add(q);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<Option> getAllOption(int quizId) {
        List<Option> list = new ArrayList<>();
        try {
            String query = "select * from [Option] \n"
                    + "where quiz_id = ? ";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, quizId);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                Option option = new Option();
                int question_id = rs.getInt("question_id");
                int option_id = rs.getInt("option_id");
                int right_option = rs.getInt("right_option");
                String Option_content = rs.getString("Option_content");
                
                option.setQuiz_id(quizId);
                option.setQuestion_id( question_id);
                option.setOption_id(option_id);
                option.setRight_option( right_option);
                option.setOption_content(Option_content);
                list.add(option);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
public void addQuestion(int last_ID, int question_id, String question, String instruction) {
        Question q = new Question();
        String query = "insert into Question(quiz_id, question_id, question, intruction) values(?, ?, ?, ?)";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, last_ID);
            ps.setInt(2, question_id); //lay quiz_id ma nguoi dung vua tao
            ps.setString(3, question);
            ps.setString(4, instruction);
            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void addOption(int quiz_id, int question_id, int option_id, int right_option, String option_content) {
        Option option = new Option();
        String query = "insert into [Option](quiz_id,question_id, option_id, right_option, option_content)\n"
                + "values(?, ?, ?, ?, ?)";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, quiz_id);
            ps.setInt(2, question_id); //lay quiz_id ma nguoi dung vua tao
            ps.setInt(3, option_id);
            ps.setInt(4, right_option);
            ps.setString(5, option_content);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public static void main(String[] args) {
        QuestionDAO dao = new QuestionDAO();
        List<Question> list = dao.getAllQuestion(1);
        for (Question question : list) {
            System.out.println(question);
        }
    }
}
