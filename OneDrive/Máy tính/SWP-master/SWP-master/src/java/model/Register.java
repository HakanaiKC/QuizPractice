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
public class Register {
    private String username;
    private String password;
    private String email;
    private int role_id;
    private String code;

    public Register() {
    }

    public Register(String username, String password, String email, int role_id, String code) {
        this.username = username;
        this.password = password;
        this.email = email;
        this.role_id = role_id;
        this.code = code;
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

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Override
    public String toString() {
        return "Register{" + "username=" + username + ", password=" + password + ", email=" + email + ", role_id=" + role_id + ", code=" + code + '}';
    }

    
}
