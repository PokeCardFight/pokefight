package com.pokefight.pokefight.models;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="pouch")
public class Pouch {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(nullable = false)
    private int quantity;

    @ManyToOne
    @JoinColumn (name = "user_id")
    private User pouch;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(
            name="pouch_items",
            joinColumns={@JoinColumn(name="pouch_id")},
            inverseJoinColumns={@JoinColumn(name="item_id")}
    )
    private List<Items> pouch_items;

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

}
