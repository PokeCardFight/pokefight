package com.pokefight.pokefight.models;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="items")
public class Item {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(nullable = false, unique = true, length = 45)
    private String name;

    @Column(nullable = false)
    private int value;

    @Column(nullable = false)
    private int rounds;

    @Column(nullable = false)
    private int cost;

    @ManyToMany(mappedBy = "pouch_items")
    private List<Pouch> items_in_pouch;

    public Item(long id, String name, int value, int rounds, int cost, List<Pouch> items_in_pouch) {
        this.id = id;
        this.name = name;
        this.value = value;
        this.rounds = rounds;
        this.cost = cost;
        this.items_in_pouch = items_in_pouch;
    }

    public Item() {

    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getValue() {
        return value;
    }

    public void setValue(int value) {
        this.value = value;
    }

    public int getRounds() {
        return rounds;
    }

    public void setRounds(int rounds) {
        this.rounds = rounds;
    }

    public int getCost() {
        return cost;
    }

    public void setCost(int cost) {
        this.cost = cost;
    }

    public List<Pouch> getItems_in_pouch() {
        return items_in_pouch;
    }

    public void setItems_in_pouch(List<Pouch> items_in_pouch) {
        this.items_in_pouch = items_in_pouch;
    }
}
