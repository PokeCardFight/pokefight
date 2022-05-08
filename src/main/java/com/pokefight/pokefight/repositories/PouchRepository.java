package com.pokefight.pokefight.repositories;

import com.pokefight.pokefight.models.Pouch;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PouchRepository extends JpaRepository<Pouch, Long> {
    @Query(value="select pi.item_id from pouch join pouch_items pi on pouch.id = pi.pouch_id where pouch_id = ?",nativeQuery = true)
    List<Long> findItemsInPouchById(Long pouchId);
}
