package com.pokefight.pokefight.models;

import com.google.gson.annotations.Expose;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="cards")
public class Card {
    @Expose(serialize = true, deserialize = true)
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Expose(serialize = true, deserialize = true)
    @Column(nullable = false, unique=true, length=50)
    private String name;

    @Expose(serialize = true, deserialize = true)
    @Column(nullable = false, length=45)
    private String type;

    @Expose(serialize = true, deserialize = true)
    @Column(nullable = false)
    private int attack;

    @Expose(serialize = true, deserialize = true)
    @Column(nullable = false)
    private int hp;

    @Expose(serialize = true, deserialize = true)
    @Column(nullable = false)
    private String image;

    @Expose(serialize = true, deserialize = true)
    @Column(nullable = false)
    private String rarity;

    @Expose(serialize = true, deserialize = true)
    @Column(nullable = false)
    private String subtype;

    @Expose(serialize = false, deserialize = false)
    @OneToMany(mappedBy = "card")
    private List<UserCard> user_card;

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

    public List<UserCard> getUser_card() {
        return user_card;
    }

    public void setUser_card(List<UserCard> user_card) {
        this.user_card = user_card;
    }
}
