package com.yjs.mvweb.pojo;

/**
 * @Author: Administrator
 * @Date: Created in 14:11 2019/1/17
 * @ClassName IUsers
 **/
public class IUsers {
    private int id;
    private String username;
    private String password;

    @Override
    public String toString() {
        return "IUsers{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
}
