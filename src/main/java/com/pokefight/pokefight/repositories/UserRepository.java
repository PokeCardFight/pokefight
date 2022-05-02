package com.pokefight.pokefight.repositories;

import com.pokefight.pokefight.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);
}
