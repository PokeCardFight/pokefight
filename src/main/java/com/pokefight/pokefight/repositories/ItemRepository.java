package com.pokefight.pokefight.repositories;

import com.pokefight.pokefight.models.Item;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import javax.transaction.Transactional;
import java.util.List;

public interface ItemRepository extends JpaRepository<Item, Long> {
    List <Item>findAll();

//    @Query(value="select pi.item_id from pouch join pouch_items pi on pouch.id = pi.pouch_id where pouch_id = ?",nativeQuery = true)

//    @Query(value="select name from items where id = ? ", nativeQuery = true)
//    String findItemById(long id);

    @Query(value="select i.name from pouch join pouch_items pi on pouch.id = pi.pouch_id join items i on pi.item_id = i.id where pouch_id = ?",nativeQuery = true)
    List<String> findItemById(long id);

    @Query(value="select items.id as id, name, value, rounds, cost from items join pouch_items pi on items.id = pi.item_id join pouch p on p.id = pi.pouch_id where p.id = ?",nativeQuery = true)
    List<Item> getItemsByPouchId(long id);

//    @Modifying
//    @Query(value="DELETE FROM pouch_items WHERE pouch_id = ? AND item_id = ?", nativeQuery = true)
//    void deleteItemFromPouch(long punchId, long itemId);

}
