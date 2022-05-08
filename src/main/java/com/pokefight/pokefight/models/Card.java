package com.pokefight.pokefight.models;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="cards")
public class Card {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(nullable = false, unique=true, length=50)
    private String name;

    @Column(nullable = false, length=45)
    private String type;

    @Column(nullable = false)
    private int attack;

    @Column(nullable = false)
    private int hp;

    @Column(nullable = false)
    private String image;

    @Column(nullable = false)
    private String rarity;

    @Column(nullable = false)
    private String subtype;

    @ManyToMany(mappedBy = "cards")
    private List<User> user;

    public Card(String name, String type, int attack, int hp, String image, String rarity, String subtype) {
        this.name = name;
        this.type = type;
        this.attack = attack;
        this.hp = hp;
        this.image = image;
        this.rarity = rarity;
        this.subtype = subtype;
    }

    public Card(Card card) {
        this.id = card.id;
        this.name = card.name;
        this.type = card.type;
        this.attack = card.attack;
        this.hp = card.hp;
        this.image = card.image;
        this.rarity = card.rarity;
        this.subtype = card.subtype;
    }

    public Card() {

    }

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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getAttack() {
        return attack;
    }

    public void setAttack(int attack) {
        this.attack = attack;
    }

    public int getHp() {
        return hp;
    }

    public void setHp(int hp) {
        this.hp = hp;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getRarity() {
        return rarity;
    }

    public void setRarity(String rarity) {
        this.rarity = rarity;
    }

    public String getSubtype() {
        return subtype;
    }

    public void setSubtype(String subtype) {
        this.subtype = subtype;
    }

    public List<User> getUser() {
        return user;
    }

    public void setUser(List<User> user) {
        this.user = user;
    }
}
