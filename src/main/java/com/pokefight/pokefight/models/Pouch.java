package com.pokefight.pokefight.models;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="pouches")
public class Pouch {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(nullable = false)
    private long quantity;

    @OneToMany(mappedBy = "pouch")
    private List<PouchItem> pouch_item;

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

    public List<PouchItem> getPouch_item() {
        return pouch_item;
    }

    public void setPouch_item(List<PouchItem> pouch_item) {
        this.pouch_item = pouch_item;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }
}
