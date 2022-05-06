USE pokefight_db;
INSERT INTO items(cost,name,rounds,value) VALUES
('2','Pebble','1','-10'),
('4','Super Stone','1', '-25'),
('6','Hyper Boulder','1','-50'),
('2','Sandal','1','0'),
('4','Super Boot', '2','0'),
('6','Sleepy Slipper','3','0'),
('2','Potion','1','20'),
('5','Super Potion','1','50'),
('8','Hyper Potion','1','100');

INSERT INTO pouch(quantity) VALUES
(3),
(2),
(1);

INSERT INTO user_pouches(user_id, pouch_id) VALUES
(1,1),
(1,2),
(1,3);

INSERT INTO pouch_items(pouch_id, item_id) VALUES
(1,1),
(1,4),
(1,7),
(2,2),
(2,8),
(3,6);

INSERT INTO user_cards(user_id, card_id) VALUES
(1,143),
(1,145),
(1,147);
