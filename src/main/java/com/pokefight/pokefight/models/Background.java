package com.pokefight.pokefight.models;

import javax.persistence.*;

@Entity
@Table(name="backgrounds")
public class Background {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @Column(nullable = false, unique=true, length=50)
    private String url;

    @Column(nullable = false, unique=true, length=45)
    private String type;

    public Background() {}

    public Background(String url, String type) {
        this.url = url;
        this.type = type;
    }

    public Background(Background background) {
        this.id = background.id;
        this.url = background.url;
        this.type = background.type;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
