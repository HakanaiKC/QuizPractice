/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Quiz;
import model.Quiz;

/**
 *
 * @author nxhai
 */
public class QuizDAO extends DBContext {

    public List<Quiz> getRecentQuiz(int user_id) {
        List<Quiz> list = new ArrayList<>();
        QuizDAO dao = new QuizDAO();
        try {
            String query = "select * from ((Quiz q  join Enrollment e on q.quiz_id = e.quiz_id) \n"
                    + "join Users u on e.user_id = u.user_id) where e.user_id =? order by day_enroll desc";// lay quiz_id, creator_id,..
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, user_id);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                Quiz q = new Quiz();
                int quiz_id = rs.getInt("quiz_id");
                int creator_id = rs.getInt("creator_id");
                String quiz_name = rs.getString("name");
                double price = rs.getDouble("price");

                q.setCreator_id(creator_id);
                q.setQuiz_id(quiz_id);
                q.setQuestionNum(dao.countQuestion(quiz_id));
                q.setCreator_name(dao.getCreatorName(creator_id));
                q.setName(quiz_name);
                q.setPrice(price);
                list.add(q);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Quiz> getQuizByCreatorID(String creatorId) {
        List<Quiz> list = new ArrayList<>();
        QuizDAO dao = new QuizDAO();
        try {
            String query = "select * from Quiz where creator_id =?\n"
                    + "order by last_update desc";// lay quiz_id, 
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setString(1, creatorId);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                Quiz q = new Quiz();
                int quiz_id = rs.getInt("quiz_id");
                int creator_id = rs.getInt("creator_id");
                String quiz_name = rs.getString("name");
                double price = rs.getDouble("price");
                Date date = rs.getDate("last_update");
                q.setCreator_id(creator_id);
                q.setQuiz_id(quiz_id);
                q.setQuestionNum(dao.countQuestion(quiz_id));
                q.setCreator_name(dao.getCreatorName(creator_id));
                q.setName(quiz_name);
                q.setPrice(price);
                q.setLast_Update(date);
                list.add(q);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public int countQuestion(int quizID) {
//        List<Quiz> list = new ArrayList<>();
        try {
            String query = "select count(quiz_id) from Question where quiz_id = ?";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, quizID);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public String getCreatorName(int creator_id) {
        List<Quiz> list = new ArrayList<>();
        try {
            String query = "select top 1 u.username from Users u join Quiz q on u.user_id =q.creator_id\n"
                    + "where q.creator_id = ?";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, creator_id);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                return rs.getString("username");
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Quiz> getRandomQuiz(int user_id) {
        List<Quiz> list = new ArrayList<>();
        QuizDAO dao = new QuizDAO();
        try {
            String query = "SELECT * \n"
                    + "FROM Quiz q\n"
                    + "WHERE Not EXISTS (SELECT 1\n"
                    + "                  FROM Enrollment e where e.quiz_id = q.quiz_id and e.user_id = ?\n"
                    + "				  )\n"
                    + "	AND q.creator_id <> ? and q.price>0\n"
                    + "	order by newid() ";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, user_id);
            pd.setInt(2, user_id);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                Quiz q = new Quiz();
                int quiz_id = rs.getInt("quiz_id");
                int creator_id = rs.getInt("creator_id");
                String quiz_name = rs.getString("name");
                double price = rs.getDouble("price");

                q.setCreator_id(creator_id);
                q.setQuiz_id(quiz_id);
                q.setQuestionNum(dao.countQuestion(quiz_id));
                q.setCreator_name(dao.getCreatorName(creator_id));
                q.setName(quiz_name);
                q.setPrice(price);
                list.add(q);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Quiz> getRandomQuiz2() {
        List<Quiz> list = new ArrayList<>();
        QuizDAO dao = new QuizDAO();
        try {
            String query = "select * from Quiz where price != 0 Order by NEWID()";
            PreparedStatement pd = connection.prepareStatement(query);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                Quiz q = new Quiz();
                int quiz_id = rs.getInt("quiz_id");
                int creator_id = rs.getInt("creator_id");
                String quiz_name = rs.getString("name");
                double price = rs.getDouble("price");

                q.setCreator_id(creator_id);
                q.setQuiz_id(quiz_id);
                q.setQuestionNum(dao.countQuestion(quiz_id));
                q.setCreator_name(dao.getCreatorName(creator_id));
                q.setName(quiz_name);
                q.setPrice(price);
                list.add(q);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public static void main(String[] args) {
        QuizDAO q = new QuizDAO();
        System.out.println(q.getRandomQuiz(15));

    }
}
