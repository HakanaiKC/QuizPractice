/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author nxhai
 */
public class Users {
    private int user_id;
    private String username;
    private String password;
    private String email;
    private String avatar;
    private int role_id;
    private String about_me;
    private String connect;
    private double ruby;      

    public Users(int user_id, String username, String password, String email, String avatar, int role_id, String about_me, String connect, double ruby) {
        this.user_id = user_id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.avatar = avatar;
        this.role_id = role_id;
        this.about_me = about_me;
        this.connect = connect;
        this.ruby = ruby;
    }

    
    public Users() {
    }

    public Users(int user_id, String username, String password, String email, String avatar, int role_id, String about_me, String connect) {
        this.user_id = user_id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.avatar = avatar;
        this.role_id = role_id;
        this.about_me = about_me;
        this.connect = connect;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public String getAbout_me() {
        return about_me;
    }

    public void setAbout_me(String about_me) {
        this.about_me = about_me;
    }

    public String getConnect() {
        return connect;
    }

    public void setConnect(String connect) {
        this.connect = connect;
    }
    
    public double getRuby() {
        return ruby;
    }

    public void setRuby(double ruby) {
        this.ruby = ruby;
    }

    @Override
    public String toString() {
        return "Users{" + "user_id=" + user_id + ", username=" + username + ", password=" + password + ", email=" + email + ", avatar=" + avatar + ", role_id=" + role_id + ", about_me=" + about_me + ", connect=" + connect + '}';
    }

    
}
