package com.pokefight.pokefight.repositories;

import com.pokefight.pokefight.models.*;
import org.springframework.data.jpa.repository.*;

import java.util.List;

public interface PouchItemRepository extends JpaRepository<PouchItem, Long> {
    @Query(value="select * from pouch_item where pouch_id = ? AND item_id = ?", nativeQuery = true)
    List<PouchItem> getByPouchIdAndItemId(long pouchId, long itemId);

    @Query(value="select i.image from pouches join pouch_item pi on pouches.id = pi.pouch_id join items i on pi.item_id = i.id where pouch_id = ?",nativeQuery = true)
    List<String> findItemById(long id);

    @Query(value="select count(*) from pouch_item where pouch_id = ?",nativeQuery = true)
    int getQuantityFromPouch(long id);

    @Query(value="select * from pouch_item where pouch_id =  ?", nativeQuery = true)
    List<PouchItem> getByPouchId(long pouchId);
}
