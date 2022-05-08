package com.pokefight.pokefight.repositories;

import com.pokefight.pokefight.models.*;
import org.springframework.data.jpa.repository.*;

public interface CardRepository extends JpaRepository<Card, Long> {
    @Query(value ="SELECT cards.id FROM cards WHERE rarity = 'Common' ORDER BY RAND() LIMIT 1", nativeQuery = true)
    Long getRandomCommonCard();

    @Query(value ="SELECT cards.id FROM cards WHERE rarity = 'Uncommon' ORDER BY RAND() LIMIT 1", nativeQuery = true)
    Long getRandomUncommonCard ();

    @Query(value ="SELECT cards.id FROM cards WHERE rarity = 'Rare' ORDER BY RAND() LIMIT 1", nativeQuery = true)
    Long getRandomRareCard ();
}
