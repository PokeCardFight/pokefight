package com.pokefight.pokefight.repositories;

import com.pokefight.pokefight.models.Pouch;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface PouchRepository extends JpaRepository<Pouch, Long> {
    List<Pouch> findItemsInPouchById(Long pouchId);
//    @Query(value="from",nativeQuery = true);

}
