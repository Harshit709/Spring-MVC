package org.example.exceptions;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.servlet.ModelAndView;

@ControllerAdvice
public class GlobalExceptionHandler {

    @ExceptionHandler({RuntimeException.class})
    public ModelAndView handleException(RuntimeException ex) {
        ModelAndView modelAndView = new ModelAndView("error");
        modelAndView.addObject("errorMessage", ex.getMessage());
        return modelAndView;
    }
    @ExceptionHandler(DuplicateUsernameException.class)
    public String handleDuplicateUsernameException(DuplicateUsernameException ex, Model model) {
        model.addAttribute("errorMessage", ex.getMessage());
        return "error"; // Return the name of your custom error page
    }


}
