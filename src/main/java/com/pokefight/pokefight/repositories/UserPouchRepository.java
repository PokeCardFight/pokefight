package com.pokefight.pokefight.repositories;

import com.pokefight.pokefight.models.User;
import com.pokefight.pokefight.models.UserPouch;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UserPouchRepository extends JpaRepository<User, Long> {
    @Query(value = "select pouch_id from user_pouch where id = ?", nativeQuery = true)
    UserPouch findPouchById(long id);
}
