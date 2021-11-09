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
import model.Payment;
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
    
    public void addPaymentHistory(int user_id, String date_of_payment, int num_of_ruby, int money, int status, String trading_code, String phone_number) {
        try {
            String query = "insert into Payment(user_id, date_of_payment, num_of_ruby,\n"
                    + "[money], [status], trading_code, phone_number) \n"
                    + "values(?, ?, ?, ?, ?, ?, ?)";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, user_id);
            pd.setString(2, date_of_payment);
            pd.setInt(3, num_of_ruby);
            pd.setInt(4, money);
            pd.setInt(5, status);
            pd.setString(6, trading_code);
            pd.setString(7, phone_number);
            pd.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Payment> getPaymentHistory(int user_id) {
        List<Payment> list = new ArrayList<>();
        try {
            String query = "select * from Payment where user_id = ?";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setInt(1, user_id);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                Payment p = new Payment();
                int paymentId = rs.getInt("payment_id");
                String datePayment = rs.getString("date_of_payment");
                int numberRuby = rs.getInt("num_of_ruby");
                int money = rs.getInt("money");
                boolean status = rs.getBoolean("status");
                String tradingCode = rs.getString("trading_code");
                String phoneNumber = rs.getString("phone_number");

                p.setUser_id(user_id);
                p.setPayment_id(paymentId);
                p.setDate_of_payment(datePayment);
                p.setNum_of_ruby(numberRuby);
                p.setMoney(money);
                p.setStatus(status);
                p.setTrading_code(tradingCode);
                p.setPhone_number(phoneNumber);

                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Payment> getAllHistoryPayment() {
        List<Payment> list = new ArrayList<>();
        try {
            String query = "select  u.username, p.date_of_payment, p.trading_code, "
                    + "p.phone_number, p.payment_id, p.num_of_ruby, p.status, p.user_id\n"
                    + "from Payment p inner join [User] u on p.user_id = u.user_id \n"
                    + "order by p.status asc, p.payment_id desc";
            PreparedStatement pd = connection.prepareStatement(query);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                Payment p = new Payment();
                int paymentId = rs.getInt("payment_id");
                int userId = rs.getInt("user_id");
                String userName = rs.getString("username");
                String datePayment = rs.getString("date_of_payment");
                int numberRuby = rs.getInt("num_of_ruby");
                boolean status = rs.getBoolean("status");
                String tradingCode = rs.getString("trading_code");
                String phoneNumber = rs.getString("phone_number");

                p.setPayment_id(paymentId);
                p.setUser_id(userId);
                p.setDate_of_payment(datePayment);
                p.setNum_of_ruby(numberRuby);;
                p.setStatus(status);
                p.setTrading_code(tradingCode);
                p.setUser_name(userName);
                p.setPhone_number(phoneNumber);
                list.add(p);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void updateStatusPurchaseRuby(int paymentId) {
        String query = "update Payment set status = 1 where payment_id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setDouble(1, paymentId);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void updateRubyAfterConfirm(float ruby, int user_id) {
        String query = "Update [User] set ruby = ruby + ? where user_id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setFloat(1, ruby);
            ps.setInt(2, user_id);
            ps.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
    public static void main(String[] args) {
        PaymentDAO p = new PaymentDAO();
    }
}
