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

    @OneToMany(mappedBy = "pouch")
    private List<UserPouch> user_pouch;

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

    public List<UserPouch> getUser_pouch() {
        return user_pouch;
    }

    public void setUser_pouch(List<UserPouch> user_pouch) {
        this.user_pouch = user_pouch;
    }
}
