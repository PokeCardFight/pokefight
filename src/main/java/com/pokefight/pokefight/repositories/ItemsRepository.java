package com.pokefight.pokefight.repositories;

import com.pokefight.pokefight.models.Items;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ItemsRepository extends JpaRepository<Items, Long> {
}
