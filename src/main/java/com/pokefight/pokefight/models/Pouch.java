package com.pokefight.pokefight.models;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="pouches")
public class Pouch {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @ManyToOne
    @JoinColumn (name = "user_id")
    private User user;

    @OneToMany(mappedBy = "pouch")
    private List<PouchItem> pouch_item;

    public Pouch() {

    }

    public Pouch(User user) {
        this.user = user;
    }

    public Pouch(Pouch pouch) {
        this.id = pouch.id;
        this.user = pouch.user;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public List<PouchItem> getPouch_item() {
        return pouch_item;
    }

    public void setPouch_item(List<PouchItem> pouch_item) {
        this.pouch_item = pouch_item;
    }
}
