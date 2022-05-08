package com.pokefight.pokefight.models;

import javax.persistence.*;

@Entity
@Table(name="user_card")
public class UserCard {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @ManyToOne
    @JoinColumn(name = "user_id")
    private User user;

    @ManyToOne
    @JoinColumn(name = "card_id")
    private Card card;

    public UserCard() {}

    public UserCard(User user, Card card) {
        this.user = user;
        this.card = card;
    }

    public UserCard(UserCard userCard) {
        this.id = userCard.id;
        this.user = userCard.user;
        this.card = userCard.card;
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

    public Card getCard() {
        return card;
    }

    public void setCard(Card card) {
        this.card = card;
    }
}
