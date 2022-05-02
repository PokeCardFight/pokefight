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

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(
            name="pouch_items",
            joinColumns={@JoinColumn(name="pouch_id")},
            inverseJoinColumns={@JoinColumn(name="item_id")}
    )
    private List<Items> pouch_items;

    @ManyToMany(mappedBy = "user_pouches")
    private List<User> user_pouches;
//
//    public Pouch(long id, int quantity, Pouch pouch,List<Items> pouch_items ){
//        this.id =id;
//        this.quantity=quantity;
//        this.pouch=pouch;
//        this.pouch_items=pouch_items;
//    }
//
//    public Pouch() {
//
//    }
//
//    public int getQuantity() {
//        return quantity;
//    }
//
//    public void setQuantity(int quantity) {
//        this.quantity = quantity;
//    }
//
//    public long getId() {
//        return id;
//    }
//
//    public void setId(long id) {
//        this.id = id;
//    }
//
//    public List<Items> getPouch_items() {
//        return pouch_items;
//    }
//
//    public void setPouch_items(List<Items> pouch_items) {
//        this.pouch_items = pouch_items;
//    }
//
//    public Pouch getPouch() {
//        return pouch;
//    }
//
//    public void setPouch(Pouch pouch) {
//        this.pouch = pouch;
//    }
}
