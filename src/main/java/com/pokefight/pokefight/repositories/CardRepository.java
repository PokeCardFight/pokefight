package com.pokefight.pokefight.repositories;

import com.pokefight.pokefight.models.*;
import org.springframework.data.jpa.repository.*;

import java.util.List;

public interface CardRepository extends JpaRepository<Card, Long> {
    @Query(value ="SELECT cards.id FROM cards WHERE rarity = 'Common' ORDER BY RAND() LIMIT 1", nativeQuery = true)
    Long getRandomCommonCard();

    @Query(value ="SELECT cards.id FROM cards WHERE rarity = 'Uncommon' ORDER BY RAND() LIMIT 1", nativeQuery = true)
    Long getRandomUncommonCard ();

    @Query(value ="SELECT cards.id FROM cards WHERE rarity = 'Rare' ORDER BY RAND() LIMIT 1", nativeQuery = true)
    Long getRandomRareCard ();
    @Query(value = "SELECT c.id, attack, hp, image, name, rarity, subtype, type FROM users JOIN user_card uc on users.id = uc.user_id JOIN cards c on c.id = uc.card_id;" , nativeQuery = true
    )
    List<Card> getUserCards ();
}
