package org.example.controller;

import org.example.exceptions.DuplicateUsernameException;
import org.example.model.User;


import org.example.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@Controller
@SessionAttributes("username")
public class UserController {
    private final UserRepository userRepository;

    @Autowired
    public UserController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping("/login")
    public String showLoginForm() {
        return "login";
    }

    @PostMapping("/login")
    public String login(ModelMap model, @RequestParam("username") String username,
                        @RequestParam("password") String password) {
        User user = userRepository.getUserByUsernameAndPassword(username, password);
        if (user != null) {
            return "redirect:listOfUser"; // Redirect to dashboard page if login is successful
        } else {
            throw new DuplicateUsernameException("This is not valid username and password please write valid username and password either signUp ");
        }
    }

    @GetMapping("/dashboard")
    public String showDashboard() {
        return "dashboard";
    }

    @GetMapping("/signup")
    public String showSignupPage() {
        return "signup";
    }

    @PostMapping("/signup")
    public String signup(@ModelAttribute User user, ModelMap modelMap) {
        User existUser = userRepository.getByUserName(user.getUserName());
        if (existUser == null) {
            userRepository.saveUser(user);
            modelMap.addAttribute("userName", user);
        } else {
            throw new DuplicateUsernameException("This username is already taken. Please try another username.");
        }
        return "dashboard"; // Redirect to dashboard after successful signup
    }

    @GetMapping("/home")
    public String showHomePage() {
        return "home";
    }

    @GetMapping("/contact")
    public String showContactPage() {
        return "contact";
    }

    @GetMapping("/aboutus")
    public String showAboutUsPage() {
        return "aboutus";
    }

    @GetMapping("/listOfUser")
    public String getAllUsers(Model model) {
        List<User> users = userRepository.getAllUsers();
        model.addAttribute("users", users);
        return "userList";
    }

    @GetMapping("/error")
    public String error() {
        return "error";
    }

}
