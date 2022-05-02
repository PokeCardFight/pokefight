package com.pokefight.pokefight.models;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="cards")
public class Cards {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(nullable = false, length=50)
    private String name;

    @Column(nullable = false, length=45)
    private String type;

    @Column(nullable = false)
    private int attack;

    @Column(nullable = false)
    private int hp;

    @Column(nullable = false)
    private String image;

    @ManyToMany(mappedBy = "user_cards")
    private List<User> user_cards;

}
