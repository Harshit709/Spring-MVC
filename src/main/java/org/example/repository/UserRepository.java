package org.example.repository;

import org.example.model.User;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;


@Repository
public class UserRepository {
    private final JdbcTemplate jdbcTemplate;

    public UserRepository(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }
    public void saveUser(User user) {
        String sql = "INSERT INTO user (userId, password, userName, fatherName, age) VALUES (?, ?, ?, ?,?)";
        jdbcTemplate.update(sql, user.getUserId(), user.getPassword(), user.getUserName(), user.getFatherName(), user.getAge());
    }
    public List<User> getAllUsers() {
        String sql = "SELECT userId, userName, fatherName, age FROM user";
        return jdbcTemplate.query(sql, new BeanPropertyRowMapper<>(User.class));
    }

    public User getUserByUsernameAndPassword(String username, String password) {
        String sql = "SELECT * FROM User WHERE LOWER(TRIM(userName)) = LOWER(?) AND password = ?";
        try {
            return jdbcTemplate.queryForObject(sql, new Object[]{username.trim(), password}, new BeanPropertyRowMapper<>(User.class));
        } catch (EmptyResultDataAccessException e) {
            return null; // User not found
        }
    }
    public User getByUserName(String username) {
        // SQL query to retrieve a user by username while ignoring case and trimming whitespace
        String sql = "SELECT * FROM User WHERE LOWER(TRIM(userName)) = LOWER(?)";
        try {
            // Execute the SQL query and retrieve the user
            return jdbcTemplate.queryForObject(sql, new Object[]{username.trim()}, new BeanPropertyRowMapper<>(User.class));
        } catch (EmptyResultDataAccessException e) {
            // User not found, return null
            return null;
        }
    }
}
