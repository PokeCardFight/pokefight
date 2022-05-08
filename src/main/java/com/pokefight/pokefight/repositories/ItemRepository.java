package com.pokefight.pokefight.repositories;

import com.pokefight.pokefight.models.*;
import org.springframework.data.jpa.repository.*;

import java.util.List;

public interface ItemRepository extends JpaRepository<Item, Long> {
    List <Item>findAll();

    @Query(value="select i.name from pouches join pouch_item pi on pouches.id = pi.pouch_id join items i on pi.item_id = i.id where pouch_id = ?",nativeQuery = true)
    List<String> findItemById(long id);

    @Query(value="select items.id as id, name, value, rounds, cost from items join pouch_item pi on items.id = pi.item_id join pouches p on p.id = pi.pouch_id where p.id = ?",nativeQuery = true)
    List<Item> getItemsByPouchId(long id);
}
