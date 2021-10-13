/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author bekim
 */
public class Option {
    private int option_id;
    protected String right_option;
    protected String Option_content;

    public Option(int option_id, String right_option, String Option_content) {
        this.option_id = option_id;
        this.right_option = right_option;
        this.Option_content = Option_content;
    }

    public int getOption_id() {
        return option_id;
    }

    public void setOption_id(int option_id) {
        this.option_id = option_id;
    }

    public String getRight_option() {
        return right_option;
    }

    public void setRight_option(String right_option) {
        this.right_option = right_option;
    }

    public String getOption_content() {
        return Option_content;
    }

    public void setOption_content(String Option_content) {
        this.Option_content = Option_content;
    }
    
    
}
