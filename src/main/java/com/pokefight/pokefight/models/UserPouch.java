package com.pokefight.pokefight.models;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="user_pouch")
public class UserPouch {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @ManyToOne
    @JoinColumn(name = "pouch_id")
    private Pouch pouch;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    public UserPouch(){

    }

    public UserPouch(long id, Pouch pouch, User user) {
        this.id = id;
        this.pouch = pouch;
        this.user = user;
    }

    public UserPouch(UserPouch userPouch) {
        this.id = userPouch.id;
        this.pouch = userPouch.pouch;
        this.user = userPouch.user;
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

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
