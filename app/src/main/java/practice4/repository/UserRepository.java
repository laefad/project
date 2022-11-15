package practice4.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import practice4.entity.User;

@Repository
@Transactional
public interface UserRepository extends JpaRepository<User, String>, JpaSpecificationExecutor<User> {
}
