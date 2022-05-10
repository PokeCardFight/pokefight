package com.pokefight.pokefight.repositories;

import com.pokefight.pokefight.models.*;
import org.springframework.data.jpa.repository.*;

import java.util.List;

public interface ItemRepository extends JpaRepository<Item, Long> {
    @Query(value="select i.id, cost, name, rounds, value from items i join pouch_item pi on i.id = pi.item_id where pouch_id = ?",nativeQuery = true)
    List<Item> getItemsByPouch(long id);
}
