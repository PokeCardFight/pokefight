package com.pokefight.pokefight.repositories;

import com.pokefight.pokefight.models.Card;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface CardRepository extends JpaRepository<Card, Long> {
    @Query(value ="SELECT c.image FROM users JOIN user_cards uc on users.id = uc.user_id JOIN cards c on c.id = uc.card_id",nativeQuery = true)
    List<String> findUrlForUser(long userId);

}
