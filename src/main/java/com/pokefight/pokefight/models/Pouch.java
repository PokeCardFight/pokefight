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
    private long quantity;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(
            name="pouch_items",
            joinColumns={@JoinColumn(name="pouch_id")},
            inverseJoinColumns={@JoinColumn(name="item_id")}
    )
    private List<Item> items;

    @ManyToMany(mappedBy = "pouches")
    private List<User> users;

    public Pouch(long quantity) {
        this.quantity = quantity;
    }

    public Pouch(Pouch pouch) {
        this.id = pouch.quantity;
        this.quantity =  pouch.quantity;
    }

    public Pouch() {

    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public long getQuantity() {
        return quantity;
    }

    public void setQuantity(long quantity) {
        this.quantity = quantity;
    }

    public List<Item> getItems() {
        return items;
    }

    public void setItems(List<Item> items) {
        this.items = items;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }
}
