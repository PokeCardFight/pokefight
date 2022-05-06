package com.pokefight.pokefight.repositories;

import com.pokefight.pokefight.models.Item;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ItemRepository extends JpaRepository<Item, Long> {
    List <Item>findAll();

//    @Query(value="select pi.item_id from pouch join pouch_items pi on pouch.id = pi.pouch_id where pouch_id = ?",nativeQuery = true)

    @Query(value="select name from items where id = ? ", nativeQuery = true)
    Item findItemById(long id);
}
