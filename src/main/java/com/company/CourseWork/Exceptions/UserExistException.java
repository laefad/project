package com.company.CourseWork.Exceptions;

public class UserExistException extends Exception {

    public UserExistException() {
        super();
    }

    public UserExistException(String message) {
        super(message);
    }

}