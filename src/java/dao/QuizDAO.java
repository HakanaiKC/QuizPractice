/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

/**
 *
 * @author Dell
 */
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Feedback;
import model.Question;
import model.Quiz;

public class QuizDAO extends DBContext {
    
    public List<Quiz> getQuizByPage(List<Quiz> list, int start, int end) {
        List<Quiz> t = new ArrayList<>();
        for (int i = start; i < end; i++) {
            t.add(list.get(i));
        }
        return t;
    }
    
    public int countUserEnrollAQuiz(String quizID) {
//        List<Quiz> list = new ArrayList<>();
        try {
            String query = "select count(user_id) from Enrollment\n"
                    + "  where quiz_id = ?";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setString(1, quizID);
            ResultSet rs = pd.executeQuery();
            
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }
    
    public Quiz getQuizByID(String id) {
        String query = " select * from Quiz where quiz_id = ?";
        Quiz q = new Quiz();
        QuizDAO dao = new QuizDAO();
        PreparedStatement pd;
        try {
            pd = connection.prepareStatement(query);
            pd.setString(1, id);
            ResultSet rs = pd.executeQuery();
            
            while (rs.next()) {
                int quiz_id = rs.getInt("quiz_id");
                int creator_id = rs.getInt("creator_id");
                String quiz_name = rs.getString("name");
                String description = rs.getNString("description");
//                double price = rs.getDouble("price");

                q.setCreator_id(creator_id);
                q.setQuiz_id(quiz_id);
//                q.setQuestionNum(dao.countQuestion(quiz_id));
                q.setCreator_name(dao.getCreatorName(creator_id));
                q.setName(quiz_name);
                q.setDescription(description);
//                q.setPrice(price);
            }
        } catch (SQLException ex) {
            Logger.getLogger(QuizDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return q;
    }
    
    public List<Quiz> getRecentQuiz(int user_id) {
        List<Quiz> list = new ArrayList<>();
        QuizDAO dao = new QuizDAO();
        try {
            String query = "select * from ((Quiz q  join Enrollment e on q.quiz_id = e.quiz_id) \n"
                    + "join [User] u on e.user_id = u.user_id) where e.user_id =? order by day_enroll desc";// lay quiz_id, creator_id,..
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, user_id);
            ResultSet rs = pd.executeQuery();
            
            while (rs.next()) {
                Quiz q = new Quiz();
                int quiz_id = rs.getInt("quiz_id");
                int creator_id = rs.getInt("creator_id");
                String quiz_name = rs.getString("name");
//                double price = rs.getDouble("price");

                q.setCreator_id(creator_id);
                q.setQuiz_id(quiz_id);
                q.setQuestionNum(dao.countQuestion(quiz_id));
                q.setCreator_name(dao.getCreatorName(creator_id));
                q.setName(quiz_name);
//                q.setPrice(price);
                list.add(q);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<Quiz> getRecentQuizByName(int user_id, String search) {
        List<Quiz> list = new ArrayList<>();
        QuizDAO dao = new QuizDAO();
        try {
            String query = "select * from ((Quiz q  join Enrollment e on q.quiz_id = e.quiz_id) \n"
                    + "join [User] u on e.user_id = u.user_id) where e.user_id =? and [name] like ? order by day_enroll desc";// lay quiz_id, creator_id,..
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, user_id);
            pd.setString(2, "%" + search + "%");
            ResultSet rs = pd.executeQuery();
            
            while (rs.next()) {
                Quiz q = new Quiz();
                int quiz_id = rs.getInt("quiz_id");
                int creator_id = rs.getInt("creator_id");
                String quiz_name = rs.getString("name");
//                double price = rs.getDouble("price");

                q.setCreator_id(creator_id);
                q.setQuiz_id(quiz_id);
                q.setQuestionNum(dao.countQuestion(quiz_id));
                q.setCreator_name(dao.getCreatorName(creator_id));
                q.setName(quiz_name);
//                q.setPrice(price);
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
//                double price = rs.getDouble("price");
                Date date = rs.getDate("last_update");
                q.setCreator_id(creator_id);
                q.setQuiz_id(quiz_id);
                q.setQuestionNum(dao.countQuestion(quiz_id));
                q.setCreator_name(dao.getCreatorName(creator_id));
                q.setName(quiz_name);
//                q.setPrice(price);
                q.setLast_Update(date);
                list.add(q);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<Quiz> searchQuizByCreatorIDandQuizName(String creatorId, String search) {
        List<Quiz> list = new ArrayList<>();
        QuizDAO dao = new QuizDAO();
        try {
            String query = "select * from Quiz where creator_id =? and [name] like ?\n"
                    + "  order by last_update desc";// lay quiz_id, 
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setString(1, creatorId);
            pd.setString(2, "%" + search + "%");
            ResultSet rs = pd.executeQuery();
            
            while (rs.next()) {
                Quiz q = new Quiz();
                int quiz_id = rs.getInt("quiz_id");
                int creator_id = rs.getInt("creator_id");
                String quiz_name = rs.getString("name");
//                double price = rs.getDouble("price");
                Date date = rs.getDate("last_update");
                q.setCreator_id(creator_id);
                q.setQuiz_id(quiz_id);
                q.setQuestionNum(dao.countQuestion(quiz_id));
                q.setCreator_name(dao.getCreatorName(creator_id));
                q.setName(quiz_name);
//                q.setPrice(price);
                q.setLast_Update(date);
                list.add(q);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<Quiz> getAllQuiz() {
        List<Quiz> list = new ArrayList<>();
        QuizDAO dao = new QuizDAO();
        try {
            String query = "select * from Quiz ";// lay quiz_id, 
            PreparedStatement pd = connection.prepareStatement(query);
            ResultSet rs = pd.executeQuery();
            
            while (rs.next()) {
                Quiz q = new Quiz();
                int quiz_id = rs.getInt("quiz_id");
                int creator_id = rs.getInt("creator_id");
                String quiz_name = rs.getString("name");
//                double price = rs.getDouble("price");
                Date date = rs.getDate("last_update");
                q.setCreator_id(creator_id);
                q.setQuiz_id(quiz_id);
                q.setQuestionNum(dao.countQuestion(quiz_id));
                q.setCreator_name(dao.getCreatorName(creator_id));
                q.setName(quiz_name);
//                q.setPrice(price);
                q.setLast_Update(date);
                list.add(q);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public List<Quiz> searchByName(String search) {
        List<Quiz> list = new ArrayList<>();
        QuizDAO dao = new QuizDAO();
        try {
            String query = " select * from quiz where [name] like ? ";// lay quiz_id, 
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setString(1, "%" + search + "%");
            ResultSet rs = pd.executeQuery();
            while (rs.next()) {
                Quiz q = new Quiz();
                int quiz_id = rs.getInt("quiz_id");
                int creator_id = rs.getInt("creator_id");
                String quiz_name = rs.getString("name");
//                double price = rs.getDouble("price");
                Date date = rs.getDate("last_update");
                q.setCreator_id(creator_id);
                q.setQuiz_id(quiz_id);
                q.setQuestionNum(dao.countQuestion(quiz_id));
                q.setCreator_name(dao.getCreatorName(creator_id));
                q.setName(quiz_name);
//                q.setPrice(price);
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
            String query = "select top 1 u.username from [User] u join Quiz q on u.user_id =q.creator_id\n"
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
                    + "	AND q.creator_id <> ?\n"
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
//                double price = rs.getDouble("price");

                q.setCreator_id(creator_id);
                q.setQuiz_id(quiz_id);
                q.setQuestionNum(dao.countQuestion(quiz_id));
                q.setCreator_name(dao.getCreatorName(creator_id));
                q.setName(quiz_name);
//                q.setPrice(price);
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
            String query = "select * from Quiz Order by NEWID()";
            PreparedStatement pd = connection.prepareStatement(query);
            ResultSet rs = pd.executeQuery();
            
            while (rs.next()) {
                Quiz q = new Quiz();
                int quiz_id = rs.getInt("quiz_id");
                int creator_id = rs.getInt("creator_id");
                String quiz_name = rs.getString("name");
//                double price = rs.getDouble("price");

                q.setCreator_id(creator_id);
                q.setQuiz_id(quiz_id);
                q.setQuestionNum(dao.countQuestion(quiz_id));
                q.setCreator_name(dao.getCreatorName(creator_id));
                q.setName(quiz_name);
//                q.setPrice(price);
                list.add(q);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
    
    public int getLastQuizId(int user_id) {
        QuizDAO dao = new QuizDAO();
        try {
            String query = "select top 1 quiz_id from Quiz where creator_id =?\n"
                    + "order by quiz_id desc";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, user_id);
            ResultSet rs = pd.executeQuery();
            while (rs.next()) {
                return rs.getInt("quiz_id");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }
    
    public void addQuiz(int creator_id, String quizName, String description, String create_date) {
        Quiz quiz = new Quiz();
        String query = "insert into Quiz (creator_id, name, description, create_date) values(?, ?, ?, ?)";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setInt(1, creator_id);
            ps.setString(2, quizName);
            ps.setString(3, description);
            ps.setString(4, create_date);
            ps.executeUpdate();
            
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public float avgRateOfQuiz(String quizID) {
//        List<Quiz> list = new ArrayList<>();
        try {
            String query = "select  avg(rate)\n"
                    + "from Feedback where quiz_id = ?";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setString(1, quizID);
            ResultSet rs = pd.executeQuery();
            
            while (rs.next()) {
                return rs.getFloat(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }
    
    public int countUserRate(String quizID) {
//        List<Quiz> list = new ArrayList<>();
        try {
            String query = "select count(rate) from Feedback\n"
                    + "where quiz_id=?";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setString(1, quizID);
            ResultSet rs = pd.executeQuery();
            
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }
    
    public int countRateStars(int star, String quizID) {
//        List<Quiz> list = new ArrayList<>();
        try {
            String query = "select count(rate)  from Feedback\n"
                    + "where rate = ? and quiz_id =?";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, star);
            pd.setString(2, quizID);
            ResultSet rs = pd.executeQuery();
            
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }
    
    public int countFeedback(String quizID) {
//        List<Quiz> list = new ArrayList<>();
        try {
            String query = "select count(feedback_id) from Feedback\n"
                    + "  where quiz_id = ? and comment !='' ";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setString(1, quizID);
            ResultSet rs = pd.executeQuery();
            
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }
    
    public void Feedback(String quiz_id, int user_id, String comment, String datenow) {
        String query = "insert into Feedback(quiz_id,user_id,comment,feedback_date) values(?, ?, ?,?)";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, quiz_id);
            ps.setInt(2, user_id);
            ps.setString(3, comment);
            ps.setString(4, datenow);
            ps.executeUpdate();
            
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
    public List<Feedback> getAllFeeback(int quizId) {
        List<Feedback> list = new ArrayList<>();
        try {
            String query = "select Feedback.feedback_id, Feedback.user_id, [User].username, Feedback.comment, Feedback.[feedback_date],Feedback.rate from Feedback join [User] \n"
                    + "on Feedback.[user_id] = [User].user_id\n"
                    + " where quiz_id =?  and comment !='' order by [feedback_date] desc";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, quizId);
            ResultSet rs = pd.executeQuery();
            
            while (rs.next()) {
                Feedback feedback = new Feedback();
                int fbId = rs.getInt("feedback_id");
                int user_id = rs.getInt("user_id");
                String username = rs.getString("username");
                String comment = rs.getString("comment");
                String date = rs.getString("feedback_date");
                float rate = rs.getFloat("rate");
//                double price = rs.getDouble("price");
                feedback.setFeedback_id(fbId);
                feedback.setUser_id(user_id);
                feedback.setUser_name(username);
                feedback.setFeedback(comment);
                feedback.setDate(date);
                feedback.setRate(rate);
                list.add(feedback);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public static void main(String[] args) {
        QuizDAO dao = new QuizDAO();
        List<Feedback> list = dao.getAllFeeback(10);
        for (Feedback feedback : list) {
            System.out.println(feedback);
        }
    }
}
