package com.example.dao;

import com.example.connection.ConnectionUtils;
import com.example.model.User;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    Connection connection = ConnectionUtils.getConnection();

    public List<User> getUser(String username, String password) {
        List<User> list = new ArrayList<>();

        String sql = "select * from user where username = '"+username +"' and password = " +password;;
//        String sql = "select * from user where username = ? and password = ?";
        try {
            Statement st = connection.createStatement();
//            PreparedStatement ps = connection.prepareStatement(sql);
//            ps.setString(1, pName);
//            ps.setString(2, password);
            ResultSet rs = st.executeQuery(sql);
            while (rs.next()){
                String name = rs.getString("username");
                String pass = rs.getString("password");
                User user = new User(name, pass);
                list.add(user);
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return list;
    }
}
