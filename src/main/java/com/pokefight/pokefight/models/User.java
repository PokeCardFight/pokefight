package com.pokefight.pokefight.models;

import javax.persistence.*;
import java.util.List;

@Entity
@Table(name="users")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(nullable = false, unique = true, length = 20)
    private String username;

    @Column(nullable = false, unique = true, length = 100)
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

    @ManyToMany
    @JoinTable(
            name="user_pouch",
            joinColumns={@JoinColumn(name="user_id")},
            inverseJoinColumns={@JoinColumn(name="pouch_id")},
            uniqueConstraints={@UniqueConstraint(columnNames={"user_id","pouch_id"})}
    )
    private List<Pouch> pouches;

    @OneToMany(mappedBy = "user")
    private List<UserCard> user_card;

    public User( String username, String email, String password, String profile_pic, int gold, int xp, int level) {
        this.username = username;
        this.email = email;
        this.password = password;
        this.profile_pic = profile_pic;
        this.gold = gold;
        this.xp = xp;
        this.level = level;

    }

    public User(User user) {
        this.id = user.id;
        this.username = user.username;
        this.email = user.email;
        this.password = user.password;
        this.profile_pic = user.profile_pic;
        this.gold = user.gold;
        this.xp = user.xp;
        this.level = user.level;
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

    public List<Pouch> getPouches() {
        return pouches;
    }

    public void setPouches(List<Pouch> pouches) {
        this.pouches = pouches;
    }

    public List<UserCard> getUser_card() {
        return user_card;
    }

    public void setUser_card(List<UserCard> user_card) {
        this.user_card = user_card;
    }
}
