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
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.DayOfWeek;
import java.time.LocalDate;
import java.time.ZonedDateTime;
import java.time.format.DateTimeFormatter;
import java.time.temporal.ChronoUnit;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Quiz;
import model.Users;

/**
 *
 * @author Dell
 */
public class AdminDAO extends DBContext {

    public int countQuiz() {
        try {
            String query = "select count(quiz_id) from Quiz";
            PreparedStatement pd = connection.prepareStatement(query);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public int countUser() {
        try {
            String query = "select count([user_id]) from [User]";
            PreparedStatement pd = connection.prepareStatement(query);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public float countRuby() {
        try {
            String query = "select sum(ruby) from [User]";
            PreparedStatement pd = connection.prepareStatement(query);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                return rs.getFloat(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public List<Quiz> getAllQuiz() {
        List<Quiz> list = new ArrayList<>();
        QuizDAO dao = new QuizDAO();
        try {
            String query = "select * from Quiz\n"
                    + "  order by create_date desc";// lay quiz_id, creator_id,..
            PreparedStatement pd = connection.prepareStatement(query);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                Quiz q = new Quiz();
                int quiz_id = rs.getInt("quiz_id");
                String quiz_name = rs.getString("name");
                q.setQuiz_id(quiz_id);
                q.setNumberEnroll(dao.countUserEnrollAQuiz(String.valueOf(quiz_id)));
                q.setRate(dao.avgRateOfQuiz(String.valueOf(quiz_id)));
                q.setName(quiz_name);
                list.add(q);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public boolean checkVisit(String date) {
        boolean check = false;
        try {
            String query = "select * from Visitor \n"
                    + "  where [time] = ?";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setString(1, date);
            ResultSet rs = pd.executeQuery();
            while (rs.next()) {
                check = true;
            }
        } catch (Exception e) {
        }
        return check;
    }

    public int getNumVisitorOfday(String date) {
        int num = 0;
        try {
            String query = "select num_of_visitor from Visitor \n"
                    + "  where [time] = ?";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setString(1, date);
            ResultSet rs = pd.executeQuery();
            while (rs.next()) {
                num = rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return num;
    }

    public void insertVisitor() {
        try {
            String query = "insert Visitor ([time], num_of_visitor)  values (GETDATE(),1)";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.execute();
        } catch (Exception e) {
        }
    }

    public void updateVisitor(String date) {
        try {
            String query = " update Visitor \n"
                    + "  set num_of_visitor = num_of_visitor +1\n"
                    + "  where [time] = ?\n"
                    + "  select * from visitor";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setString(1, date);
            pd.execute();
        } catch (Exception e) {
        }

    }

    public String numVisitorInWeek(LocalDate today) {
        AdminDAO admin = new AdminDAO();
        String numOfEachDay = "";
        List<LocalDate> list = new ArrayList<>();
        list.add(today);

        LocalDate temp = today;
        DayOfWeek tempday = temp.getDayOfWeek();
        while (tempday.getValue() != DayOfWeek.MONDAY.getValue()) {
            temp = temp.minusDays(1);
            list.add(temp);
            tempday = temp.getDayOfWeek();
        }

        temp = today;
        tempday = temp.getDayOfWeek();
        while (tempday.getValue() != DayOfWeek.SUNDAY.getValue()) {
            temp = temp.plus(1, ChronoUnit.DAYS);
            list.add(temp);
            tempday = temp.getDayOfWeek();
        }
        Collections.sort(list);
        for (LocalDate localDate : list) {
            String dateNow = localDate.format(DateTimeFormatter.ofPattern("yyyy-MM-dd"));
            numOfEachDay += admin.getNumVisitorOfday(dateNow) + " ";
//            System.out.println(dateNow+ " "+ admin.getNumVisitorOfday(dateNow) );
        }
        return numOfEachDay;
    }

    public int getQuizCreateEachMonth(int month, int year) {
        int num = 0;
        try {
            String query = "select count([quiz_id]) from Quiz\n"
                    + "   where month([create_date]) = ? and YEAR([create_date]) = ?";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, month);
            pd.setInt(2, year);
            ResultSet rs = pd.executeQuery();
            while (rs.next()) {
                num = rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return num;
    }

    public String QuizCreateInYear(int year) {
        String string = "";
        AdminDAO admin = new AdminDAO();
        for (int i = 1; i <= 12; i++) {
            string += admin.getQuizCreateEachMonth(i, year) + " ";
        }
        return string;
    }

    public int getMoneyEachMonth(int month, int year) {
        int num = 0;
        try {
            String query = "select sum([money]) from Payment\n"
                    + "where month([date_of_payment]) = ? and YEAR([date_of_payment]) = ? and type_of_payment = 0";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, month);
            pd.setInt(2, year);
            ResultSet rs = pd.executeQuery();
            while (rs.next()) {
                num = rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return num;
    }

    public String MoneyInYear(int year) {
        String string = "";
        AdminDAO admin = new AdminDAO();
        for (int i = 1; i <= 12; i++) {
            string += admin.getMoneyEachMonth(i, year) + " ";
        }
        return string;
    }

    public int getNumQuizOfUser(int userId) {
        int num = 0;
        try {
            String query = "select count(quiz_id) from Quiz\n"
                    + "where creator_id = ?";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, userId);
            ResultSet rs = pd.executeQuery();
            while (rs.next()) {
                num = rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return num;
    }

    public List<Users> getUser() {
        List<Users> list = new ArrayList<>();
//        QuizDAO dao = new QuizDAO();
        AdminDAO dao = new AdminDAO();
        try {
            String query = "select * from [User]\n"
                    + "where [role_id] != 2\n"
                    + "order by username asc";// lay quiz_id, creator_id,..
            PreparedStatement pd = connection.prepareStatement(query);
            ResultSet rs = pd.executeQuery();
            while (rs.next()) {
                Users u = new Users();
                int id = rs.getInt("user_id");
                String user_name = rs.getString("username");
                u.setUser_id(id);
                u.setUsername(user_name);
                u.setCountQuizCreated(dao.getNumQuizOfUser(id));
                list.add(u);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;

    }

    public void banUser(String user_id) {
        try {
            String query = "   update [User]\n"
                    + "  set role_id = 10\n"
                    + "  where user_id = ?";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setString(1, user_id);
            pd.execute();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) throws ParseException {
        AdminDAO admin = new AdminDAO();
        System.out.println(admin.getUser().get(1).getCountQuizCreated());
//        System.out.println(admin.numVisitorInWeek(LocalDate.now().minusDays(0)));
//        System.err.println(admin.getQuizCreateEachMonth(10, 2020));
//        admin.insertVisitor();
//        admin.updateVisitor("2021-11-07");
    }
}
