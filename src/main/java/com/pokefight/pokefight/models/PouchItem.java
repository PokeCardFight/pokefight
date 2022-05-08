package com.pokefight.pokefight.models;

import javax.persistence.*;

@Entity
@Table(name="pouch_item")
public class PouchItem {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @ManyToOne
    @JoinColumn(name = "pouch_id")
    private Pouch pouch;

    @ManyToOne
    @JoinColumn(name = "item_id")
    private Item item;

    public PouchItem() {}

    public PouchItem(Pouch pouch, Item item) {
        this.pouch = pouch;
        this.item = item;
    }

    public PouchItem(PouchItem pouchItem) {
        this.id = pouchItem.id;
        this.pouch = pouchItem.pouch;
        this.item = pouchItem.item;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public Pouch getPouch() {
        return pouch;
    }

    public void setPouch(Pouch pouch) {
        this.pouch = pouch;
    }

    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }
}
