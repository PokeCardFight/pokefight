package com.pokefight.pokefight.models;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="items")
public class Items {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(nullable = false, length=45)
    private String name;

    @Column(nullable = false)
    private int value;

    @Column(nullable = false)
    private int rounds;

    @Column(nullable = false)
    private int cost;

    @ManyToMany(mappedBy = "pouch_items")
    private List<Pouch> items_in_pouch;
}
