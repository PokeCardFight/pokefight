package com.pokefight.pokefight.models;

import javax.persistence.*;

@Entity
@Table(name="deck")
public class Deck {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @OneToOne
    private Deck cards;


}
