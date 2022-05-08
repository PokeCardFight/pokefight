package com.pokefight.pokefight.models;

import com.google.gson.annotations.Expose;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="items")
public class Item {
    @Expose(serialize = true, deserialize = true)
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Expose(serialize = true, deserialize = true)
    @Column(nullable = false, unique = true, length = 45)
    private String name;

    @Expose(serialize = true, deserialize = true)
    @Column(nullable = false)
    private int value;

    @Expose(serialize = true, deserialize = true)
    @Column(nullable = false)
    private int rounds;

    @Expose(serialize = true, deserialize = true)
    @Column(nullable = false)
    private int cost;

    @Expose(serialize = false, deserialize = false)
    @OneToMany(mappedBy = "item")
    private List<PouchItem> pouch_item;

    public Item(String name, int value, int rounds, int cost) {
        this.id = id;
        this.name = name;
        this.value = value;
        this.rounds = rounds;
        this.cost = cost;
    }

    public Item(Item item) {
        this.id = item.id;
        this.name = item.name;
        this.value = item.value;
        this.rounds = item.rounds;
        this.cost = item.cost;
    }

    public Item() {}

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

    public List<PouchItem> getPouch_item() {
        return pouch_item;
    }

    public void setPouch_item(List<PouchItem> pouch_item) {
        this.pouch_item = pouch_item;
    }
}
