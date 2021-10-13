/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import model.Register;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Users;

/**
 *
 * @author nxhai
 */
public class UsersDAO extends DBContext {

    public void register(String user_name,
            String password, String email) {
        String query = "insert into [User](username,password,email,role_id) "
                + "Values(?,?,?,0)";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, user_name);
            ps.setString(2, password);
            ps.setString(3, email);

            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }

    }

    public Register checkAccountExist(String email) {
        Register u = new Register();
        try {
            String query = "select * from [User] where email =?";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setString(1, email);

            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                u.setEmail(email);
                return u;
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Users getUsers(String email, String password) {
        Users u = new Users();
        try {
            String query = "select * from [User] u where \n"
                    + "u.email = ? and password = ?";
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setString(1, email);
            pd.setString(2, password);
            ResultSet rs = pd.executeQuery();

            while (rs.next()) {
                int id = rs.getInt("user_id");
                String user_name = rs.getString("username");
                String avatar = rs.getString("avatar");
                int role_id = rs.getInt("role_id");
                String connect = rs.getString("connect");
                String aboutMe = rs.getString("about_me");

                u.setEmail(email);
                u.setPassword(password);
                u.setUser_id(id);
                u.setUsername(user_name);
                u.setAvatar(avatar);
                u.setRole_id(role_id);
                u.setConnect(connect);
                u.setAbout_me(aboutMe);
               return u;
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Users getUserByID(String id) {
        Users u = new Users();
        String query = "select * from [User] where user_id = ?";
        try {
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setString(1, id);
            ResultSet rs = pd.executeQuery();
            while (rs.next()) {
                 u = new Users(rs.getInt("user_id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getString("avatar"),
                        rs.getInt("role_id"),
                        rs.getString("about_me"),
                        rs.getString("connect")
                                );
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return u;
    }
    public Users getUserByEmail(String email) {
        Users u = new Users();
        String query = "select * from [User] where email = ?";
        try {
            PreparedStatement pd = connection.prepareStatement(query);
            pd.setString(1, email);
            ResultSet rs = pd.executeQuery();
            while (rs.next()) {
                 u = new Users(rs.getInt("user_id"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getString("email"),
                        rs.getString("avatar"),
                        rs.getInt("role_id"),
                        rs.getString("about_me"),
                        rs.getString("connect")
                                );
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return u;
    }

    public void forgotPass(String password, String email) {
        String query = "Update [User] set password =? "
                + "where email=?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, password);
            ps.setString(2, email);
            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }

    }

    public void updateAvatar(String id, String avatar) {
        String query = " update [User]\n"
                + "  set avatar = ?\n"
                + "  where user_id =?;";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, avatar);
            ps.setString(2, id);
            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public void updatePassword(String email, String pass) {
        String query = " update [Users]\n"
                + "  set password = ?\n"
                + "  where email = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, pass);
            ps.setString(2, email);
            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
      public void updateProfile(String id, String name, String aboutme, String connect) {
        String query = " update [Users]\n"
                + "  set username = ?,\n"
                + "   about_me = ?,\n"
                + "   connect = ?\n"
                + "  where user_id =?;";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, aboutme);
            ps.setString(3, connect);
            ps.setString(4, id);
            ps.executeUpdate();

        } catch (Exception e) {
            System.out.println(e);
        }
    }
     
     
     
    public static void main(String[] args) {
        UsersDAO dao = new UsersDAO();
        dao.register("datvt09", "1111", "dat@gmail.com");

    }
}
