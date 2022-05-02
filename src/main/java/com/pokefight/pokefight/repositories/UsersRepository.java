package com.pokefight.pokefight.repositories;

import com.pokefight.pokefight.models.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UsersRepository extends JpaRepository<User, Long> {
}
