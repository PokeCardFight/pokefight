package com.pokefight.pokefight.repositories;

import com.pokefight.pokefight.models.*;
import org.springframework.data.jpa.repository.*;

import java.util.List;

public interface PouchRepository extends JpaRepository<Pouch, Long> {
    @Query(value="select id from pouches where user_id = ?",nativeQuery = true)
    List<Long> findUserPouchesById(long id);
}
