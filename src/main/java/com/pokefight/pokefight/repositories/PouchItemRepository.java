package com.pokefight.pokefight.repositories;

import com.pokefight.pokefight.models.*;
import org.springframework.data.jpa.repository.*;

public interface PouchItemRepository extends JpaRepository<PouchItem, Long> {
    @Query(value="select * from pouch_item where pouch_id = ? AND item_id = ?", nativeQuery = true)
    PouchItem getByPouchIdAndItemId(long pouchId, long itemId);
}
