package com.pokefight.pokefight.repositories;

import com.pokefight.pokefight.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);

    @Query(value="select up.pouch_id from users join user_pouches up on users.id = up.user_id where id = ?",nativeQuery = true)
    List<Long> findUserPouchesById(long id);
}
