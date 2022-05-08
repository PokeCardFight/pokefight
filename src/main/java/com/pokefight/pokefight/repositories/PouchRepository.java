package com.pokefight.pokefight.repositories;

import com.pokefight.pokefight.models.*;
import org.springframework.data.jpa.repository.*;

import java.util.List;

public interface PouchRepository extends JpaRepository<Pouch, Long> {
    @Query(value="select pi.item_id from pouches join pouch_item pi on pouch.id = pi.pouch_id where pouch_id = ?",nativeQuery = true)
    List<Long> findItemsInPouchById(Long pouchId);
}
