package practice4.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import practice4.entity.User;
import practice4.exceptions.UserAlreadyExistException;
import practice4.repository.UserRepository;

@Service
public class UserService {

    @Autowired
    UserRepository userRepository;

    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;

    @Transactional(readOnly = true)
    public boolean hasUserByLogin(String login) {
        return userRepository.findById(login).isPresent();
    }

    @Transactional(readOnly = true)
    public boolean userHasOrderById(User user, long order_id) {
        return user.getOrders().stream().anyMatch(
                (order) -> order.getId() == order_id
        );
    }

    @Transactional()
    public void addUser(String login, String password, String mail) throws UserAlreadyExistException {

        if (hasUserByLogin(login))
            throw new UserAlreadyExistException("User " + login + " already in database");

        password = bCryptPasswordEncoder.encode(password);
        User u = new User(login, password, "USER", mail, null);
        userRepository.save(u);
    }

    @Transactional(readOnly = true)
    public User getUserByLogin(String login)  {
        Optional<User> user = userRepository.findById(login);
        return user.orElse(null);
    }

}
