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

    @ManyToMany(mappedBy = "user_cards")
    private List<User> user_cards;

    public Card(String name, String type, int attack, int hp, String image) {
        this.name = name;
        this.type = type;
        this.attack = attack;
        this.hp = hp;
        this.image = image;
    }

    public Card(Card card) {
        this.id = card.id;
        this.name = card.name;
        this.type = card.type;
        this.attack = card.attack;
        this.hp = card.hp;
        this.image = card.image;
        this.user_cards = card.user_cards;
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

    public List<User> getUser_cards() {
        return user_cards;
    }

    public void setUser_cards(List<User> user_cards) {
        this.user_cards = user_cards;
    }

}
