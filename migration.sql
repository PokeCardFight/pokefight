CREATE DATABASE IF NOT EXISTS pokefight_db;
USE pokefight_db;

SET FOREIGN_KEY_CHECKS = 0;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS pouch;
DROP TABLE IF EXISTS pouch_items;
DROP TABLE IF EXISTS items;
DROP TABLE IF EXISTS deck;
DROP TABLE IF EXISTS cards;
DROP TABLE IF EXISTS cards;
DROP TABLE IF EXISTS user_cards;
DROP TABLE IF EXISTS user_pouches;
SET FOREIGN_KEY_CHECKS = 1;
/*
CREATE TABLE users
(
    id          INT UNSIGNED NOT NULL AUTO_INCREMENT,
    username    VARCHAR(240) NOT NULL,
    email       VARCHAR(240) NOT NULL,
    password    VARCHAR(255) NOT NULL,
    profile_pic VARCHAR(255) NOT NULL,
    gold        INT UNSIGNED NOT NULL,
    xp          INT UNSIGNED NOT NULL,
    level       INT UNSIGNED NOT NULL,
    pouch_id    INT UNSIGNED NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE deck
(
    deck_id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    users_id      INT UNSIGNED NOT NULL,
    PRIMARY KEY (deck_id),
    FOREIGN KEY (users_id) REFERENCES users (id)
    ON DELETE CASCADE
);

CREATE TABLE cards
(
    card_id     INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name        VARCHAR (50),
    type        VARCHAR (45),
    attack      INT UNSIGNED NOT NULL,
    image       VARCHAR (255),
    hp          INT UNSIGNED NOT NULL,
    card_deck_id  INT UNSIGNED NOT NULL,
    FOREIGN KEY (card_deck_id) REFERENCES deck (deck_id)
        ON DELETE CASCADE,
    PRIMARY KEY (card_id)
);

CREATE TABLE pouch
(
    pouch_id     INT UNSIGNED NOT NULL AUTO_INCREMENT,
    quantity     INT UNSIGNED NOT NULL,
    users_id     INT UNSIGNED NOT NULL,
    FOREIGN KEY (users_id) REFERENCES users (id)
        ON DELETE CASCADE,
    PRIMARY KEY (pouch_id)
);

CREATE TABLE items
(
    items_id        INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name            VARCHAR (45),
    value           INT NOT NULL,
    cost            INT UNSIGNED NOT NULL,
    PRIMARY KEY (items_id)
);

CREATE TABLE pouch_items
(
    pouch_items_id  INT UNSIGNED NOT NULL AUTO_INCREMENT,
    item_quantity   INT UNSIGNED NOT NULL,
    pouch_id        INT UNSIGNED NOT NULL,
    items_id        INT UNSIGNED NOT NULL,
    FOREIGN KEY (pouch_id) REFERENCES pouch (pouch_id)
        ON DELETE CASCADE,
    FOREIGN KEY (items_id) REFERENCES items (items_id)
        ON DELETE CASCADE,
    PRIMARY KEY (pouch_items_id)
);

*/