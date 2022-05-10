package com.pokefight.pokefight.repositories;

import com.pokefight.pokefight.models.*;
import org.springframework.data.jpa.repository.*;

import java.util.List;

public interface BackgroundRepository extends JpaRepository<Background, Long> {
    @Query(value ="select url from backgrounds where type = ?", nativeQuery = true)
    String getBackgroundUrl(String type);
}
