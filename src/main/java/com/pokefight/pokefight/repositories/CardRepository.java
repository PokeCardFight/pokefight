package com.pokefight.pokefight.repositories;

import com.pokefight.pokefight.models.Card;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CardRepository extends JpaRepository<Card, Long> {
}
