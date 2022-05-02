package com.pokefight.pokefight.models;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(nullable = false, length=20)
    private String username;

    @Column(nullable = false, length= 100)
    private String email;

    @Column(nullable = false)
    private String password;

    @Column(nullable = false)
    private String profile_pic;

    @Column(nullable=false)
    private int gold;

    @Column(nullable=false)
    private int xp;

    @Column(nullable=false)
    private int level;


    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(
            name="user_pouches",
            joinColumns={@JoinColumn(name="user_id")},
            inverseJoinColumns={@JoinColumn(name="pouch_id")}
    )
    private List<Pouch> user_pouches;

    @ManyToMany(cascade = CascadeType.ALL)
    @JoinTable(
            name="user_cards",
            joinColumns={@JoinColumn(name="user_id")},
            inverseJoinColumns={@JoinColumn(name="card_id")}
    )
    private List<Cards> user_cards;

    public User(long id, String username, String email, String password, String profile_pic, int gold, int xp, int level, List<Pouch> user_pouches, List<Cards> user_cards) {
        this.id = id;
        this.username = username;
        this.email = email;
        this.password = password;
        this.profile_pic = profile_pic;
        this.gold = gold;
        this.xp = xp;
        this.level = level;
        this.user_pouches = user_pouches;
        this.user_cards = user_cards;
    }

    public User() {

    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getProfile_pic() {
        return profile_pic;
    }

    public void setProfile_pic(String profile_pic) {
        this.profile_pic = profile_pic;
    }

    public int getGold() {
        return gold;
    }

    public void setGold(int gold) {
        this.gold = gold;
    }

    public int getXp() {
        return xp;
    }

    public void setXp(int xp) {
        this.xp = xp;
    }

    public int getLevel() {
        return level;
    }

    public void setLevel(int level) {
        this.level = level;
    }

    public List<Pouch> getUser_pouches() {
        return user_pouches;
    }

    public void setUser_pouches(List<Pouch> user_pouches) {
        this.user_pouches = user_pouches;
    }

    public List<Cards> getUser_cards() {
        return user_cards;
    }

    public void setUser_cards(List<Cards> user_cards) {
        this.user_cards = user_cards;
    }
}
