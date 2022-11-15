package practice4.exceptions;

public class UserExistException extends Exception {

    public UserExistException() {
        super();
    }

    public UserExistException(String message) {
        super(message);
    }

}