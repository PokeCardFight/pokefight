package com.pokefight.pokefight.repositories;

import com.pokefight.pokefight.models.Cards;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CardsRepository extends JpaRepository<Cards, Long> {
}
