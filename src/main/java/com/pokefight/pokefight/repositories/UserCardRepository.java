package com.pokefight.pokefight.repositories;

import com.pokefight.pokefight.models.*;
import org.springframework.data.jpa.repository.*;

import java.util.List;

public interface UserCardRepository extends JpaRepository<UserCard, Long> {
    @Query(value="select * from user_card where user_id =  ?", nativeQuery = true)
    List<UserCard> getByUserId(long userId);
}
