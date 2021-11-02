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

    public List<Question> getNQuestion(int quizId, int numOfQ) {
        List<Question> list = new ArrayList<>();
        String query = "select top (?) *from Question \n"
                + "		where quiz_id = ?\n"
                + "		order by newid()";
        try {

            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, numOfQ);
            pd.setInt(2, quizId);
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
                option.setQuestion_id(question_id);
                option.setOption_id(option_id);
                option.setRight_option(right_option);
                option.setOption_content(Option_content);
                list.add(option);
            }
        } catch (SQLException e) {
            System.err.println(e);
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
    
    public void updateQuestion(String question, String instruction, int question_id, int quiz_id) {
        String query = "update Question set question=?, intruction=?\n"
                + "where question_id = ? and quiz_id=?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, question);
            ps.setString(2, instruction);
            ps.setInt(3, question_id);
            ps.setInt(4, quiz_id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void updateOption(int right_option, String option_content, int question_id, int quiz_id, int option_id) {
        String query = "update [Option] set right_option=?, option_content=? \n"
                + "where question_id = ? and quiz_id=? and option_id=?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, right_option);
            ps.setString(2, option_content);
            ps.setInt(3, question_id);
            ps.setInt(4, quiz_id);
            ps.setInt(5, option_id);
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public void deleteQuestion(int quiz_id) {
        String query = "Delete from Question where quiz_id= ?";
        
        try {
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, quiz_id);
            pd.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public void deleteOption(int quiz_id) {
        String query = "Delete from [Option] where quiz_id = ?";
        
        try {
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, quiz_id);
           pd.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public Question getQuestionByID(int quiz_id,int questionId) {
        Question q = new Question();
        try {
            String query = "select * from Question where quiz_id=? and question_id=?";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, quiz_id);
            pd.setInt(2, questionId);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                String question = rs.getString("question");
                String intruction = rs.getString("intruction");
                q.setQuiz_id(quiz_id);
                q.setQuestion_id(questionId);
                q.setQuestion(question);
                q.setInstruction(intruction);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return q;
    }
    
    public List<Option> getOptionByID(int quizId,int questionId) {
        List<Option> list = new ArrayList<>();
        try {
            String query = "select * from [Option] \n"
                    + "where quiz_id = ? and question_id = ?";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, quizId);
            pd.setInt(2, questionId);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                Option option = new Option();
                int option_id = rs.getInt("option_id");
                int right_option = rs.getInt("right_option");
                String Option_content = rs.getString("Option_content");

                option.setQuiz_id(quizId);
                option.setQuestion_id(questionId);
                option.setOption_id(option_id);
                option.setRight_option(right_option);
                option.setOption_content(Option_content);
                list.add(option);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public StringBuilder getQueID(String quizId){        
        StringBuilder list = new StringBuilder();
        try {
            String query = "select question_id from Question where quiz_id= ?";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setString(1, quizId);
            ResultSet rs = pd.executeQuery();
            while(rs.next()){
                list.append(rs.getInt("question_id")).append(" ");                
            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<Question> getRandomQuestion(int quizId) {
        List<Question> list = new ArrayList<>();
        try {
            String query = "select top 1 quiz.quiz_id,question_id,question,[name] from Question ques join Quiz quiz on ques.quiz_id=quiz.quiz_id where ques.quiz_id=? order by NEWID()";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, quizId);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                Question q = new Question();
                int questionId = rs.getInt("question_id");
                String question = rs.getString("question");
                String name = rs.getString("name");
                q.setQuiz_id(quizId);
                q.setQuestion_id(questionId);
                q.setQuestion(question);
                q.setName(name);
                list.add(q);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public static void main(String[] args) {
        QuestionDAO dao = new QuestionDAO();
        List<Question> list = dao.getNQuestion(25, 7);
        for (Question question : list) {
            System.out.println(question);
        }
    }
}
