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

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "pouch")
    private List<Pouch> pouches;

    @OneToOne
    private User deck;




}
