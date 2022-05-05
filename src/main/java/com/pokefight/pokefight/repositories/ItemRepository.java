package com.pokefight.pokefight.repositories;

import com.pokefight.pokefight.models.Item;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface ItemRepository extends JpaRepository<Item, Long> {
    List <Item>findAll();
}
