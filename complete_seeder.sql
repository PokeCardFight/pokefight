USE pokefight_db;
INSERT INTO items (cost,name,rounds,value, image) VALUES
                                              ('2','Pebble','1','15','/static/img/rock-svgrepo-com.svg'),
                                              ('4','Super Stone','1', '25','/static/img/falling-boulder-svgrepo-com.svg'),
                                              ('6','Hyper Boulder','1','55','/static/img/rock2-svgrepo-com.svg'),
                                              ('2','Sandal','1','5','/static/img/flip-flop-sandals-svgrepo-com.svg'),
                                              ('4','Super Boot', '2','5','/static/img/boot-svgrepo-com.svg'),
                                              ('6','Sleepy Slipper','3','5','/static/img/slipper-svgrepo-com.svg'),
                                              ('2','Potion','1','-15','/static/img/potion-svgrepo-com.svg'),
                                              ('5','Super Potion','1','-25','/static/img/potionsuper-svgrepo-com.svg'),
                                              ('8','Hyper Potion','1','-55','/static/img/potionhyper-svgrepo-com.svg');

INSERT INTO backgrounds (url, type) VALUES
('/static/img/pokemon-grass-background.png','Grass'),
('/static/img/pokemon-water-background.jpg','Water'),
('/static/img/pokemon-fire-background.png','Fire'),
('/static/img/pokemon-psychic-background.jpg','Psychic'),
('/static/img/pokemon-lightning-background.png','Electric'),
('/static/img/Pokemon-fighting.jpeg','Fighting'),
('/static/img/pokemon-colorless-background.png','Normal'),
('/static/img/Pokemon-Flying.jpeg','Flying'),
('/static/img/Pokemon-Poison.jpeg','Poison'),
('/static/img/Pokemon-Ground.jpeg','Ground'),
('/static/img/Pokemon-Rock.png','Rock'),
('/static/img/Pokemon-Dark.jpeg','Dark'),
('/static/img/Pokemon-Dragon.jpeg','Dragon'),
('/static/img/Pokemon-Ice.jpeg','Ice'),
('/static/img/Pokemon-Fairy.jpeg','Fairy');

INSERT INTO cards (name, hp, attack, image, type, rarity, subtype) VALUES
                                                                       ('Bulbasaur',   45, 10, 'https://images.pokemontcg.io/base4/67.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Ivysaur',     60, 12, 'https://images.pokemontcg.io/base4/44.png', 'Grass', 'Uncommon', 'Stage 1'),
                                                                       ('Venusaur',    85, 16, 'https://images.pokemontcg.io/base4/18.png', 'Grass', 'Rare', 'Stage 2'),
                                                                       ('Charmander',  40, 10, 'https://images.pokemontcg.io/base1/46.png', 'Fire', 'Common', 'Basic'),
                                                                       ('Charmeleon',  60, 12, 'https://images.pokemontcg.io/base1/24.png', 'Fire', 'Uncommon', 'Stage 1'),
                                                                       ('Charizard',   85, 16, 'https://images.pokemontcg.io/base1/4.png', 'Fire', 'Rare', 'Stage 2'),
                                                                       ('Squirtle',    45, 10, 'https://images.pokemontcg.io/base4/93.png', 'Water', 'Common', 'Basic'),
                                                                       ('Wartortle',   60, 12, 'https://images.pokemontcg.io/base4/63.png', 'Water', 'Uncommon', 'Stage 1'),
                                                                       ('Blastoise',   85, 16, 'https://images.pokemontcg.io/base1/2.png', 'Water', 'Rare', 'Stage 2'),
                                                                       ('Caterpie',    45, 6, 'https://images.pokemontcg.io/base1/45.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Metapod',     50, 4, 'https://images.pokemontcg.io/base1/54.png', 'Grass', 'Uncommon', 'Stage 1'),
                                                                       ('Butterfree',  65, 8, 'https://images.pokemontcg.io/base4/34.png', 'Grass', 'Rare', 'Stage 2'),
                                                                       ('Weedle',      40, 6, 'https://images.pokemontcg.io/base4/100.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Kakuna',      45, 5, 'https://images.pokemontcg.io/base4/47.png', 'Grass', 'Uncommon', 'Stage 1'),
                                                                       ('Beedrill',    65, 16, 'https://images.pokemontcg.io/base1/17.png', 'Grass', 'Rare', 'Stage 2'),
                                                                       ('Pidgey',      40, 9, 'https://images.pokemontcg.io/base1/57.png', 'Flying', 'Common', 'Basic'),
                                                                       ('Pidgeotto',   65, 12, 'https://images.pokemontcg.io/base1/22.png', 'Flying', 'Uncommon', 'Stage 1'),
                                                                       ('Pidgeot',     80, 16, 'https://images.pokemontcg.io/base4/14.png', 'Flying', 'Rare', 'Stage 2'),
                                                                       ('Rattata',     30, 10, 'https://images.pokemontcg.io/base4/89.png', 'Normal', 'Common', 'Basic'),
                                                                       ('Raticate',    55, 16, 'https://images.pokemontcg.io/base4/58.png', 'Normal', 'Uncommon', 'Stage 1'),
                                                                       ('Spearow',     40, 10, 'https://images.pokemontcg.io/base4/92.png', 'Flying', 'Common', 'Basic'),
                                                                       ('Fearow',      65, 16, 'https://images.pokemontcg.io/base4/41.png', 'Flying', 'Uncommon', 'Stage 1'),
                                                                       ('Ekans',       35, 10, 'https://images.pokemontcg.io/base5/56.png', 'Poison', 'Common', 'Basic'),
                                                                       ('Arbok',       60, 16, 'https://images.pokemontcg.io/base3/31.png', 'Poison', 'Uncommon', 'Stage 1'),
                                                                       ('Pikachu',     40, 11, 'https://images.pokemontcg.io/base4/87.png', 'Electric', 'Common', 'Stage 1'),
                                                                       ('Raichu',      65, 18, 'https://images.pokemontcg.io/base4/16.png', 'Electric', 'Rare', 'Stage 2'),
                                                                       ('Sandshrew',   50, 10, 'https://images.pokemontcg.io/base4/91.png', 'Ground', 'Common', 'Basic'),
                                                                       ('Sandslash',   75, 16, 'https://images.pokemontcg.io/base3/41.png', 'Ground', 'Rare', 'Stage 1'),
                                                                       ('Nidoran ♀',   50, 8, 'https://images.pokemontcg.io/base4/82.png', 'Poison', 'Common', 'Basic'),
                                                                       ('Nidorina',    65, 12, 'https://images.pokemontcg.io/base4/53.png', 'Poison', 'Uncommon', 'Stage 1'),
                                                                       ('Nidoqueen',   90, 15, 'https://images.pokemontcg.io/base4/12.png', 'Poison', 'Rare', 'Stage 2'),
                                                                       ('Nidoran ♂',   45, 9, 'https://images.pokemontcg.io/base4/83.png', 'Poison', 'Common', 'Basic'),
                                                                       ('Nidorino',    65, 12, 'https://images.pokemontcg.io/base4/54.png', 'Poison', 'Uncommon', 'Stage 1'),
                                                                       ('Nidoking',    95, 15, 'https://images.pokemontcg.io/base4/11.png', 'Poison', 'Rare', 'Stage 2'),
                                                                       ('Clefairy',    70, 8, 'https://images.pokemontcg.io/base1/5.png', 'Fairy', 'Uncommon', 'Stage 1'),
                                                                       ('Clefable',    95, 13, 'https://images.pokemontcg.io/base4/5.png', 'Fairy', 'Rare', 'Stage 2'),
                                                                       ('Vulpix',      40, 8, 'https://images.pokemontcg.io/base4/99.png', 'Fire', 'Common', 'Basic'),
                                                                       ('Ninetales',   75, 14, 'https://images.pokemontcg.io/base4/13.png', 'Fire', 'Rare', 'Stage 1'),
                                                                       ('Jigglypuff',  50, 8, 'https://images.pokemontcg.io/base4/77.png', 'Fairy', 'Common', 'Stage 1'),
                                                                       ('Wigglytuff',  80, 12, 'https://images.pokemontcg.io/base4/19.png', 'Fairy', 'Rare', 'Stage 2'),
                                                                       ('Zubat',       40, 8, 'https://images.pokemontcg.io/base5/70.png', 'Flying', 'Common', 'Basic'),
                                                                       ('Golbat',      75, 14, 'https://images.pokemontcg.io/base3/34.png', 'Flying', 'Rare', 'Stage 1'),
                                                                       ('Oddish',      40, 8, 'https://images.pokemontcg.io/base2/58.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Gloom',       60, 10, 'https://images.pokemontcg.io/base2/37.png', 'Grass', 'Uncommon', 'Stage 1'),
                                                                       ('Vileplume',   80, 12, 'https://images.pokemontcg.io/base2/15.png', 'Grass', 'Rare', 'Stage 2'),
                                                                       ('Paras',       40, 8, 'https://images.pokemontcg.io/base4/85.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Parasect',    65, 10, 'https://images.pokemontcg.io/base4/55.png', 'Grass', 'Uncommon', 'Stage 1'),
                                                                       ('Venonat',     40, 9, 'https://images.pokemontcg.io/base4/97.png', 'Poison', 'Common', 'Basic'),
                                                                       ('Venomoth',    75, 14, 'https://images.pokemontcg.io/base4/31.png', 'Poison', 'Rare', 'Stage 1'),
                                                                       ('Diglett',     35, 10, 'https://images.pokemontcg.io/base4/71.png', 'Ground', 'Common', 'Basic'),
                                                                       ('Dugtrio',     65, 12, 'https://images.pokemontcg.io/base4/23.png', 'Ground', 'Uncommon', 'Stage 1'),
                                                                       ('Meowth',      40, 8, 'https://images.pokemontcg.io/base4/80.png', 'Normal', 'Common', 'Basic'),
                                                                       ('Persian',     65, 12, 'https://images.pokemontcg.io/base4/56.png', 'Normal', 'Uncommon', 'Stage 1'),
                                                                       ('Psyduck',     45, 7, 'https://images.pokemontcg.io/base3/53.png', 'Water', 'Common', 'Basic'),
                                                                       ('Golduck',     75, 17, 'https://images.pokemontcg.io/base3/35.png', 'Water', 'Rare', 'Stage 1'),
                                                                       ('Mankey',      35, 12, 'https://images.pokemontcg.io/base2/55.png', 'Fighting', 'Common', 'Basic'),
                                                                       ('Primeape',    75, 18, 'https://images.pokemontcg.io/base2/43.png', 'Fighting', 'Rare', 'Stage 1'),
                                                                       ('Growlithe',   40, 10, 'https://images.pokemontcg.io/base4/42.png', 'Fire', 'Common', 'Basic'),
                                                                       ('Arcanine',    80, 17, 'https://images.pokemontcg.io/base1/23.png', 'Fire', 'Rare', 'Stage 1'),
                                                                       ('Poliwag',     45, 8, 'https://images.pokemontcg.io/base1/59.png', 'Water', 'Common', 'Basic'),
                                                                       ('Poliwhirl',   65, 12, 'https://images.pokemontcg.io/base1/38.png', 'Water', 'Uncommon', 'Stage 1'),
                                                                       ('Poliwrath',   80, 16, 'https://images.pokemontcg.io/base1/13.png', 'Water', 'Rare', 'Stage 2'),
                                                                       ('Abra',        30, 10, 'https://images.pokemontcg.io/base1/43.png', 'Psychic', 'Common', 'Basic'),
                                                                       ('Kadabra',     55, 14, 'https://images.pokemontcg.io/base1/32.png', 'Psychic', 'Uncommon', 'Stage 1'),
                                                                       ('Alakazam',    75, 18, 'https://images.pokemontcg.io/base1/1.png', 'Psychic', 'Rare', 'Stage 2'),
                                                                       ('Machop',      40, 10, 'https://images.pokemontcg.io/base1/52.png', 'Fighting', 'Common', 'Basic'),
                                                                       ('Machoke',     60, 14, 'https://images.pokemontcg.io/base1/34.png', 'Fighting', 'Uncommon', 'Stage 1'),
                                                                       ('Machamp',     80, 17, 'https://images.pokemontcg.io/base1/8.png', 'Fighting', 'Rare', 'Stage 2'),
                                                                       ('Bellsprout',  35, 8, 'https://images.pokemontcg.io/base4/66.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Weepinbell',  65, 12, 'https://images.pokemontcg.io/base4/64.png', 'Grass', 'Uncommon', 'Stage 1'),
                                                                       ('Victreebel',  85, 14, 'https://images.pokemontcg.io/base4/32.png', 'Grass', 'Rare', 'Stage 2'),
                                                                       ('Tentacool',   35, 10, 'https://images.pokemontcg.io/base3/56.png', 'Water', 'Common', 'Basic'),
                                                                       ('Tentacruel',  65, 12, 'https://images.pokemontcg.io/base3/44.png', 'Water', 'Uncommon', 'Stage 1'),
                                                                       ('Geodude',     50, 8, 'https://images.pokemontcg.io/base3/47.png', 'Rock', 'Common', 'Basic'),
                                                                       ('Graveler',    65, 12, 'https://images.pokemontcg.io/base3/37.png', 'Rock', 'Uncommon', 'Stage 1'),
                                                                       ('Golem',      80, 15, 'https://images.pokemontcg.io/base3/36.png', 'Rock', 'Rare', 'Stage 2'),
                                                                       ('Ponyta',      40, 8, 'https://images.pokemontcg.io/base1/60.png', 'Fire', 'Common', 'Basic'),
                                                                       ('Rapidash',    70, 14, 'https://images.pokemontcg.io/base2/44.png', 'Fire', 'Rare', 'Stage 1'),
                                                                       ('Slowpoke',    50, 8, 'https://images.pokemontcg.io/base5/67.png', 'Psychic', 'Common', 'Basic'),
                                                                       ('Slowbro',     80, 14, 'https://images.pokemontcg.io/base3/43.png', 'Psychic', 'Rare', 'Stage 1'),
                                                                       ('Magnemite',   50, 8, 'https://images.pokemontcg.io/base4/79.png', 'Electric', 'Common', 'Basic'),
                                                                       ('Magneton',    75, 14, 'https://images.pokemontcg.io/base4/9.png', 'Electric', 'Rare', 'Stage 1'),
                                                                       ('Farfetch''d', 55, 12, 'https://images.pokemontcg.io/base4/40.png', 'Flying', 'Uncommon', 'Basic'),
                                                                       ('Doduo',       40, 8, 'https://images.pokemontcg.io/base4/72.png', 'Flying', 'Common', 'Basic'),
                                                                       ('Dodrio',      60, 12, 'https://images.pokemontcg.io/base4/37.png', 'Flying', 'Uncommon', 'Stage 1'),
                                                                       ('Seel',        45, 8, 'https://images.pokemontcg.io/base4/61.png', 'Water', 'Uncommon', 'Basic'),
                                                                       ('Dewgong',     80, 14, 'https://images.pokemontcg.io/base4/36.png', 'Water', 'Rare', 'Stage 1'),
                                                                       ('Grimer',      40, 8, 'https://images.pokemontcg.io/base5/57.png', 'Poison', 'Common', 'Basic'),
                                                                       ('Muk',         65, 11, 'https://images.pokemontcg.io/base3/13.png', 'Poison', 'Uncommon', 'Stage 1'),
                                                                       ('Shellder',    40, 8, 'https://images.pokemontcg.io/base3/54.png', 'Water', 'Common', 'Basic'),
                                                                       ('Cloyster',    85, 12, 'https://images.pokemontcg.io/base3/32.png', 'Water', 'Rare', 'Stage 1'),
                                                                       ('Gastly',      40, 8, 'https://images.pokemontcg.io/base1/50.png', 'Psychic', 'Common', 'Basic'),
                                                                       ('Haunter',     60, 12, 'https://images.pokemontcg.io/base1/29.png', 'Psychic', 'Uncommon', 'Stage 1'),
                                                                       ('Gengar',      80, 16, 'https://images.pokemontcg.io/base3/20.png', 'Psychic', 'Rare', 'Stage 2'),
                                                                       ('Onix',        70, 11, 'https://images.pokemontcg.io/base1/56.png', 'Rock', 'Uncommon', 'Basic'),
                                                                       ('Drowzee',     45, 8, 'https://images.pokemontcg.io/base1/49.png', 'Psychic', 'Common', 'Basic'),
                                                                       ('Hypno',       80, 14, 'https://images.pokemontcg.io/base3/8.png', 'Psychic', 'Rare', 'Stage 1'),
                                                                       ('Krabby',      40, 8, 'https://images.pokemontcg.io/base3/51.png', 'Water', 'Common', 'Basic'),
                                                                       ('Kingler',     65, 12, 'https://images.pokemontcg.io/base3/38.png', 'Water', 'Uncommon', 'Stage 1'),
                                                                       ('Voltorb',     40, 8, 'https://images.pokemontcg.io/base4/98.png', 'Electric', 'Common', 'Basic'),
                                                                       ('Electrode',   80, 14, 'https://images.pokemontcg.io/base4/25.png', 'Electric', 'Rare', 'Stage 1'),
                                                                       ('Exeggcute',   45, 8, 'https://images.pokemontcg.io/base4/74.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Exeggutor',   80, 14, 'https://images.pokemontcg.io/base4/39.png', 'Grass', 'Rare', 'Stage 1'),
                                                                       ('Cubone',      40, 8, 'https://images.pokemontcg.io/base4/70.png', 'Ground', 'Common', 'Basic'),
                                                                       ('Marowak',     60, 12, 'https://images.pokemontcg.io/base4/52.png', 'Ground', 'Uncommon', 'Stage 1'),
                                                                       ('Hitmonlee',   75, 16, 'https://images.pokemontcg.io/base3/7.png', 'Fighting', 'Rare', 'Stage 1'),
                                                                       ('Hitmonchan',  75, 16, 'https://images.pokemontcg.io/base4/8.png', 'Fighting', 'Rare', 'Stage 1'),
                                                                       ('Lickitung',   70, 11, 'https://images.pokemontcg.io/base4/48.png', 'Normal', 'Uncommon', 'Basic'),
                                                                       ('Koffing',     40, 8, 'https://images.pokemontcg.io/base1/51.png', 'Poison', 'Common', 'Basic'),
                                                                       ('Weezing',     60, 12, 'https://images.pokemontcg.io/base3/45.png', 'Poison', 'Uncommon', 'Stage 1'),
                                                                       ('Rhyhorn',     50, 8, 'https://images.pokemontcg.io/base4/90.png', 'Rock', 'Common', 'Basic'),
                                                                       ('Rhydon',      85, 15, 'https://images.pokemontcg.io/base4/59.png', 'Rock', 'Rare', 'Stage 1'),
                                                                       ('Chansey',    100, 8, 'https://images.pokemontcg.io/base1/3.png', 'Normal', 'Rare', 'Basic'),
                                                                       ('Tangela',     55, 8, 'https://images.pokemontcg.io/base1/66.png', 'Grass', 'Uncommon', 'Basic'),
                                                                       ('Kangaskhan',  85, 14, 'https://images.pokemontcg.io/base4/26.png', 'Normal', 'Rare', 'Basic'),
                                                                       ('Horsea',      40, 8, 'https://images.pokemontcg.io/base3/49.png', 'Water', 'Common', 'Basic'),
                                                                       ('Seadra',      60, 12, 'https://images.pokemontcg.io/base3/42.png', 'Water', 'Uncommon', 'Stage 1'),
                                                                       ('Goldeen',     40, 8, 'https://images.pokemontcg.io/base4/76.png', 'Water', 'Common', 'Basic'),
                                                                       ('Seaking',     60, 12, 'https://images.pokemontcg.io/base4/60.png', 'Water', 'Uncommon', 'Stage 1'),
                                                                       ('Staryu',      40, 8, 'https://images.pokemontcg.io/base4/95.png', 'Water', 'Common', 'Basic'),
                                                                       ('Starmie',     60, 12, 'https://images.pokemontcg.io/base4/94.png', 'Water', 'Uncommon', 'Stage 1'),
                                                                       ('Mr. Mime',    65, 18, 'https://images.pokemontcg.io/base4/27.png', 'Psychic', 'Rare', 'Basic'),
                                                                       ('Scyther',     70, 16, 'https://images.pokemontcg.io/base4/17.png', 'Grass', 'Rare', 'Basic'),
                                                                       ('Jynx',        70, 11, 'https://images.pokemontcg.io/base4/45.png', 'Psychic', 'Uncommon', 'Stage 1'),
                                                                       ('Electabuzz',  70, 16, 'https://images.pokemontcg.io/base4/24.png', 'Electric', 'Rare', 'Stage 1'),
                                                                       ('Magmar',      70, 16, 'https://images.pokemontcg.io/base1/36.png', 'Fire', 'Rare', 'Stage 1'),
                                                                       ('Pinsir',      65, 16, 'https://images.pokemontcg.io/base4/29.png', 'Grass', 'Rare', 'Basic'),
                                                                       ('Tauros',      60, 14, 'https://images.pokemontcg.io/base4/62.png', 'Normal', 'Uncommon', 'Basic'),
                                                                       ('Magikarp',    30, 6, 'https://images.pokemontcg.io/base4/50.png', 'Water', 'Common', 'Basic'),
                                                                       ('Gyarados',    85, 16, 'https://images.pokemontcg.io/base4/7.png', 'Water', 'Rare', 'Stage 1'),
                                                                       ('Lapras',      85, 15, 'https://images.pokemontcg.io/base3/10.png', 'Water', 'Rare', 'Basic'),
                                                                       ('Ditto',       45, 6, 'https://images.pokemontcg.io/base3/3.png', 'Normal', 'Rare', 'Basic'),
                                                                       ('Eevee',       40, 8, 'https://images.pokemontcg.io/base2/51.png', 'Normal', 'Common', 'Basic'),
                                                                       ('Vaporeon',    80, 14, 'https://images.pokemontcg.io/base2/12.png', 'Water', 'Rare', 'Stage 1'),
                                                                       ('Jolteon',     80, 14, 'https://images.pokemontcg.io/base2/20.png', 'Electric', 'Rare', 'Stage 1'),
                                                                       ('Flareon',     80, 14, 'https://images.pokemontcg.io/base2/3.png', 'Fire', 'Rare', 'Stage 1'),
                                                                       ('Porygon',     40, 8, 'https://images.pokemontcg.io/base1/39.png', 'Normal', 'Common', 'Basic'),
                                                                       ('Omanyte',     40, 8, 'https://images.pokemontcg.io/base3/52.png', 'Water', 'Common', 'Stage 1'),
                                                                       ('Omastar',     70, 14, 'https://images.pokemontcg.io/base3/40.png', 'Water', 'Rare', 'Stage 2'),
                                                                       ('Kabuto',      40, 8, 'https://images.pokemontcg.io/base3/50.png', 'Rock', 'Common', 'Stage 1'),
                                                                       ('Kabutops',    75, 14, 'https://images.pokemontcg.io/base3/9.png', 'Rock', 'Rare', 'Stage 2'),
                                                                       ('Aerodactyl',  75, 14, 'https://images.pokemontcg.io/base3/1.png', 'Flying', 'Rare', 'Stage 1'),
                                                                       ('Snorlax',     100, 12, 'https://images.pokemontcg.io/base4/30.png', 'Normal', 'Rare', 'Basic'),
                                                                       ('Articuno',    95, 16, 'https://images.pokemontcg.io/base3/2.png', 'Ice', 'Legendary', 'Basic'),
                                                                       ('Zapdos',      95, 16, 'https://images.pokemontcg.io/base4/20.png', 'Electric', 'Legendary', 'Basic'),
                                                                       ('Moltres',     95, 16, 'https://images.pokemontcg.io/base3/12.png', 'Fire', 'Legendary', 'Basic'),
                                                                       ('Dratini',     40, 8, 'https://images.pokemontcg.io/base4/38.png', 'Dragon', 'Uncommon', 'Basic'),
                                                                       ('Dragonair',   65, 14, 'https://images.pokemontcg.io/base4/22.png', 'Dragon', 'Rare', 'Stage 1'),
                                                                       ('Dragonite',   90, 15, 'https://images.pokemontcg.io/base3/4.png', 'Dragon', 'Legendary', 'Stage 2'),
                                                                       ('Mewtwo',      120, 14, 'https://images.pokemontcg.io/base4/10.png', 'Psychic', 'Legendary', 'Basic'),
                                                                       ('Mew',     90, 12, 'https://images.pokemontcg.io/base4/71.png', 'Psychic', 'Legendary', 'Basic'),
                                                                       ('Chikorita',     40, 10, 'https://images.pokemontcg.io/base4/23.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Bayleef',      65, 12, 'https://images.pokemontcg.io/base4/80.png', 'Grass', 'Uncommon', 'Stage 1'),
                                                                       ('Meganium',     85, 16, 'https://images.pokemontcg.io/base4/56.png', 'Grass', 'Rare', 'Stage 2'),
                                                                       ('Cyndaquil',     40, 10, 'https://images.pokemontcg.io/base3/53.png', 'Fire', 'Common', 'Basic'),
                                                                       ('Quilava',     60, 13, 'https://images.pokemontcg.io/base3/35.png', 'Fire', 'Uncommon', 'Stage 1'),
                                                                       ('Typhlosion',      85, 16, 'https://images.pokemontcg.io/base2/55.png', 'Fire', 'Rare', 'Stage 2'),
                                                                       ('Totodile',    45, 10, 'https://images.pokemontcg.io/base2/43.png', 'Water', 'Common', 'Basic'),
                                                                       ('Croconaw',   65, 12, 'https://images.pokemontcg.io/base4/42.png', 'Water', 'Uncommon', 'Stage 1'),
                                                                       ('Feraligatr',    85, 16, 'https://images.pokemontcg.io/base1/23.png', 'Water', 'Rare', 'Stage 2'),
                                                                       ('Sentret',     40, 8, 'https://images.pokemontcg.io/base1/59.png', 'Normal', 'Common', 'Basic'),
                                                                       ('Furret',   55, 11, 'https://images.pokemontcg.io/base1/38.png', 'Normal', 'Uncommon', 'Stage 1'),
                                                                       ('Hoothoot',   40, 8, 'https://images.pokemontcg.io/base1/13.png', 'Flying', 'Common', 'Basic'),
                                                                       ('Noctowl',        60, 12, 'https://images.pokemontcg.io/base1/43.png', 'Flying', 'Uncommon', 'Stage 1'),
                                                                       ('Ledyba',     40, 8, 'https://images.pokemontcg.io/base1/32.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Ledian',    55, 11, 'https://images.pokemontcg.io/base1/1.png', 'Grass', 'Uncommon', 'Stage 1'),
                                                                       ('Spinarak',      35, 8, 'https://images.pokemontcg.io/base1/52.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Ariados',     55, 13, 'https://images.pokemontcg.io/base1/34.png', 'Grass', 'Uncommon', 'Stage 1'),
                                                                       ('Crobat',     80, 14, 'https://images.pokemontcg.io/base1/8.png', 'Flying', 'Rare', 'Stage 2'),
                                                                       ('Chinchou',  40, 8, 'https://images.pokemontcg.io/base4/66.png', 'Water', 'Common', 'Basic'),
                                                                       ('Lanturn',  60, 12, 'https://images.pokemontcg.io/base4/64.png', 'Water', 'Uncommon', 'Stage 1'),
                                                                       ('Pichu',  35, 10, 'https://images.pokemontcg.io/base4/32.png', 'Electric', 'Common', 'Basic'),
                                                                       ('Cleffa',   35, 10, 'https://images.pokemontcg.io/base3/56.png', 'Fairy', 'Common', 'Basic'),
                                                                       ('Igglybuff',  35, 8, 'https://images.pokemontcg.io/base3/44.png', 'Fairy', 'Common', 'Basic'),
                                                                       ('Togepi',     45, 10, 'https://images.pokemontcg.io/base3/47.png', 'Fairy', 'Common', 'Basic'),
                                                                       ('Togetic',    75, 14, 'https://images.pokemontcg.io/base3/37.png', 'Fairy', 'Uncommon', 'Stage 1'),
                                                                       ('Natu',      40, 8, 'https://images.pokemontcg.io/base3/36.png', 'Psychic', 'Common', 'Basic'),
                                                                       ('Xatu',      60, 12, 'https://images.pokemontcg.io/base1/60.png', 'Psychic', 'Uncommon', 'Stage 1'),
                                                                       ('Mareep',    40, 8, 'https://images.pokemontcg.io/base2/44.png', 'Electric', 'Common', 'Basic'),
                                                                       ('Flaafy',    55, 12, 'https://images.pokemontcg.io/base5/67.png', 'Electric', 'Uncommon', 'Stage 1'),
                                                                       ('Ampharos',     85, 16, 'https://images.pokemontcg.io/base3/43.png', 'Electric', 'Rare', 'Stage 2'),
                                                                       ('Bellossom',   55, 12, 'https://images.pokemontcg.io/base4/79.png', 'Grass', 'Uncommon', 'Basic'),
                                                                       ('Marill',    40, 8, 'https://images.pokemontcg.io/base4/9.png', 'Water', 'Common', 'Basic'),
                                                                       ('Azumarill', 70, 14, 'https://images.pokemontcg.io/base4/40.png', 'Water', 'Rare', 'Stage 1'),
                                                                       ('Sudowoodo',       55, 10, 'https://images.pokemontcg.io/base4/72.png', 'Rock', 'Uncommon', 'Basic'),
                                                                       ('Politoed',      65, 12, 'https://images.pokemontcg.io/base4/37.png', 'Water', 'Rare', 'Stage 2'),
                                                                       ('Hoppip',        40, 8, 'https://images.pokemontcg.io/base4/61.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Skiploom',     60, 10, 'https://images.pokemontcg.io/base4/36.png', 'Grass', 'Uncommon', 'Stage 1'),
                                                                       ('Jumpluff',      70, 12, 'https://images.pokemontcg.io/base5/57.png', 'Grass', 'Rare', 'Stage 2'),
                                                                       ('Aipom',         50, 10, 'https://images.pokemontcg.io/base3/13.png', 'Normal', 'Uncommon', 'Basic'),
                                                                       ('Sunkern',    40, 8, 'https://images.pokemontcg.io/base3/54.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Sunflora',    65, 12, 'https://images.pokemontcg.io/base3/32.png', 'Grass', 'Uncommon', 'Stage 1'),
                                                                       ('Yanma',      35, 10, 'https://images.pokemontcg.io/base1/50.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Wooper',     40, 8, 'https://images.pokemontcg.io/base1/29.png', 'Water', 'Common', 'Basic'),
                                                                       ('Quagsire',      70, 10, 'https://images.pokemontcg.io/base3/20.png', 'Water', 'Uncommon', 'Stage 1'),
                                                                       ('Espeon',        75, 16, 'https://images.pokemontcg.io/base1/56.png', 'Psychic', 'Rare', 'Stage 2'),
                                                                       ('Umbreon',     75, 16, 'https://images.pokemontcg.io/base1/49.png', 'Dark', 'Rare', 'Stage 2'),
                                                                       ('Murkrow',       40, 8, 'https://images.pokemontcg.io/base3/8.png', 'Dark', 'Rare', 'Basic'),
                                                                       ('Slowking',      85, 16, 'https://images.pokemontcg.io/base3/51.png', 'Water', 'Common', 'Stage 2'),
                                                                       ('Misdreavous',     40, 8, 'https://images.pokemontcg.io/base3/38.png', 'Psychic', 'Common', 'Basic'),
                                                                       ('Unknown',     40, 8, 'https://images.pokemontcg.io/base4/98.png', 'Psychic', 'Uncommon', 'Basic'),
                                                                       ('Wobbuffet',   80, 10, 'https://images.pokemontcg.io/base4/25.png', 'Psychic', 'Common', 'Basic'),
                                                                       ('Girafarig',   45, 8, 'https://images.pokemontcg.io/base4/74.png', 'Psychic', 'Common', 'Basic'),
                                                                       ('Pineco',   45, 8, 'https://images.pokemontcg.io/base4/39.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Forretress',      95, 12, 'https://images.pokemontcg.io/base4/70.png', 'Grass', 'Rare', 'Stage 1'),
                                                                       ('Dunsparce',     50, 8, 'https://images.pokemontcg.io/base4/52.png', 'Normal', 'Common', 'Basic'),
                                                                       ('Gligar',   45, 8, 'https://images.pokemontcg.io/base3/7.png', 'Ground', 'Common', 'Basic'),
                                                                       ('Steelix',  90, 14, 'https://images.pokemontcg.io/base4/8.png', 'Rock', 'Rare', 'Stage 1'),
                                                                       ('Snubbull',   40, 8, 'https://images.pokemontcg.io/base4/48.png', 'Fairy', 'Common', 'Basic'),
                                                                       ('Granbull',     75, 14, 'https://images.pokemontcg.io/base1/51.png', 'Fairy', 'Uncommon', 'Stage 1'),
                                                                       ('Qwilfish',     45, 8, 'https://images.pokemontcg.io/base3/45.png', 'Water', 'Common', 'Basic'),
                                                                       ('Scizor',     80, 14, 'https://images.pokemontcg.io/base4/90.png', 'Grass', 'Rare', 'Stage 1'),
                                                                       ('Shuckle',      50, 8, 'https://images.pokemontcg.io/base4/59.png', 'Rock', 'Common', 'Basic'),
                                                                       ('Heracross',    80, 14, 'https://images.pokemontcg.io/base1/3.png', 'Grass', 'Rare', 'Basic'),
                                                                       ('Sneasel',     45, 8, 'https://images.pokemontcg.io/base1/66.png', 'Dark', 'Common', 'Basic'),
                                                                       ('Teddiursa',  45, 8, 'https://images.pokemontcg.io/base4/26.png', 'Normal', 'Common', 'Basic'),
                                                                       ('Ursaring',      85, 16, 'https://images.pokemontcg.io/base3/49.png', 'Normal', 'Rare', 'Stage 1'),
                                                                       ('Slugma',      40, 8, 'https://images.pokemontcg.io/base3/42.png', 'Fire', 'Common', 'Basic'),
                                                                       ('Magcargo',     65, 10, 'https://images.pokemontcg.io/base4/76.png', 'Fire', 'Uncommon', 'Stage 1'),
                                                                       ('Swinub',     45, 8, 'https://images.pokemontcg.io/base4/60.png', 'Ice', 'Common', 'Basic'),
                                                                       ('Piloswine',     80, 14, 'https://images.pokemontcg.io/base4/60.png', 'Ice', 'Uncommon', 'Stage 1'),
                                                                       ('Corsola',      45, 8, 'https://images.pokemontcg.io/base4/95.png', 'Water', 'Common', 'Basic'),
                                                                       ('Remoraid',     40, 8, 'https://images.pokemontcg.io/base4/94.png', 'Water', 'Common', 'Basic'),
                                                                       ('Octillery',    75, 14, 'https://images.pokemontcg.io/base4/27.png', 'Water', 'Rare', 'Stage 1'),
                                                                       ('Delibird',     70, 12, 'https://images.pokemontcg.io/base4/17.png', 'Flying', 'Rare', 'Basic'),
                                                                       ('Mantine',        60, 12, 'https://images.pokemontcg.io/base4/45.png', 'Water', 'Uncommon', 'Basic'),
                                                                       ('Skarmory',  75, 10, 'https://images.pokemontcg.io/base4/24.png', 'Flying', 'Uncommon', 'Basic'),
                                                                       ('Houndour',      40, 8, 'https://images.pokemontcg.io/base1/36.png', 'Fire', 'Common', 'Basic'),
                                                                       ('Houndoom',      70, 14, 'https://images.pokemontcg.io/base4/29.png', 'Fire', 'Uncommon', 'Stage 1'),
                                                                       ('Kingdra',      80, 16, 'https://images.pokemontcg.io/base4/62.png', 'Water', 'Rare', 'Stage 2'),
                                                                       ('Phanpy',    45, 8, 'https://images.pokemontcg.io/base4/50.png', 'Ground', 'Common', 'Basic'),
                                                                       ('Donphan',    80, 14, 'https://images.pokemontcg.io/base4/7.png', 'Ground', 'Rare', 'Stage 1'),
                                                                       ('Porygon2',      65, 12, 'https://images.pokemontcg.io/base3/10.png', 'Normal', 'Rare', 'Stage 1'),
                                                                       ('Stanler',       50, 10, 'https://images.pokemontcg.io/base3/3.png', 'Normal', 'Uncommon', 'Basic'),
                                                                       ('Smeargle',       50, 8, 'https://images.pokemontcg.io/base2/51.png', 'Normal', 'Uncommon', 'Basic'),
                                                                       ('Tyrogue',    55, 14, 'https://images.pokemontcg.io/base2/12.png', 'Fighting', 'Uncommon', 'Basic'),
                                                                       ('Hitmontop',     80, 16, 'https://images.pokemontcg.io/base2/20.png', 'Electric', 'Rare', 'Stage 1'),
                                                                       ('Smoochum',     35, 8, 'https://images.pokemontcg.io/base2/3.png', 'Psychic', 'Common', 'Basic'),
                                                                       ('Elekid',     40, 8, 'https://images.pokemontcg.io/base1/39.png', 'Electric', 'Common', 'Basic'),
                                                                       ('Magby',     40, 8, 'https://images.pokemontcg.io/base3/52.png', 'Fire', 'Common', 'Basic'),
                                                                       ('Miltank',     90, 14, 'https://images.pokemontcg.io/base3/40.png', 'Normal', 'Uncommon', 'Basic'),
                                                                       ('Blissey',     120, 11, 'https://images.pokemontcg.io/base3/40.png', 'Normal', 'Rare', 'Stage 1'),
                                                                       ('Raikou',      95, 16, 'https://images.pokemontcg.io/base3/50.png', 'Electric', 'Rare', 'Basic'),
                                                                       ('Entei',    95, 16, 'https://images.pokemontcg.io/base3/9.png', 'Fire', 'Rare', 'Basic'),
                                                                       ('Suicune',  95, 16, 'https://images.pokemontcg.io/base3/1.png', 'Water', 'Rare', 'Basic'),
                                                                       ('Larvitar',     45, 10, 'https://images.pokemontcg.io/base4/30.png', 'Rock', 'Common', 'Basic'),
                                                                       ('Pupitar',    65, 12, 'https://images.pokemontcg.io/base3/2.png', 'Rock', 'Uncommon', 'Stage 1'),
                                                                       ('Tyranitar',      90, 15, 'https://images.pokemontcg.io/base4/20.png', 'Rock', 'Legendary', 'Stage 2'),
                                                                       ('Lugia',     95, 16, 'https://images.pokemontcg.io/base3/12.png', 'Psychic', 'Legendary', 'Basic'),
                                                                       ('Ho-oh',     95, 16, 'https://images.pokemontcg.io/base4/38.png', 'Fire', 'Legendary', 'Basic'),
                                                                       ('Celebi',   85, 15, 'https://images.pokemontcg.io/base4/22.png', 'Psychic', 'Legendary', 'Basic');

update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/1.png' where id = 1;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/2.png' where id = 2;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/3.png' where id = 3;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/4.png' where id = 4;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/5.png' where id = 5;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/6.png' where id = 6;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/7.png' where id = 7;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/8.png' where id = 8;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/9.png' where id = 9;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/10.png' where id = 10;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/11.png' where id = 11;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/12.png' where id = 12;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/13.png' where id = 13;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/14.png' where id = 14;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/15.png' where id = 15;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/16.png' where id = 16;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/17.png' where id = 17;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/18.png' where id = 18;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/19.png' where id = 19;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/20.png' where id = 20;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/21.png' where id = 21;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/22.png' where id = 22;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/23.png' where id = 23;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/24.png' where id = 24;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/25.png' where id = 25;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/26.png' where id = 26;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/27.png' where id = 27;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/28.png' where id = 28;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/29.png' where id = 29;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/30.png' where id = 30;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/31.png' where id = 31;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/32.png' where id = 32;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/33.png' where id = 33;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/34.png' where id = 34;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/35.png' where id = 35;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/36.png' where id = 36;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/37.png' where id = 37;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/38.png' where id = 38;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/39.png' where id = 39;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/40.png' where id = 40;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/41.png' where id = 41;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/42.png' where id = 42;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/43.png' where id = 43;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/44.png' where id = 44;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/45.png' where id = 45;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/46.png' where id = 46;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/47.png' where id = 47;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/48.png' where id = 48;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/49.png' where id = 49;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/50.png' where id = 50;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/51.png' where id = 51;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/52.png' where id = 52;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/53.png' where id = 53;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/54.png' where id = 54;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/55.png' where id = 55;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/56.png' where id = 56;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/57.png' where id = 57;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/58.png' where id = 58;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/59.png' where id = 59;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/60.png' where id = 60;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/61.png' where id = 61;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/62.png' where id = 62;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/63.png' where id = 63;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/64.png' where id = 64;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/65.png' where id = 65;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/66.png' where id = 66;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/67.png' where id = 67;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/68.png' where id = 68;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/69.png' where id = 69;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/70.png' where id = 70;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/71.png' where id = 71;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/72.png' where id = 72;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/73.png' where id = 73;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/74.png' where id = 74;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/75.png' where id = 75;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/76.png' where id = 76;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/77.png' where id = 77;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/78.png' where id = 78;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/79.png' where id = 79;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/80.png' where id = 80;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/81.png' where id = 81;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/82.png' where id = 82;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/83.png' where id = 83;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/84.png' where id = 84;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/85.png' where id = 85;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/86.png' where id = 86;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/87.png' where id = 87;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/88.png' where id = 88;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/89.png' where id = 89;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/90.png' where id = 90;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/91.png' where id = 91;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/92.png' where id = 92;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/93.png' where id = 93;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/94.png' where id = 94;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/95.png' where id = 95;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/96.png' where id = 96;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/97.png' where id = 97;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/98.png' where id = 98;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/99.png' where id = 99;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/100.png' where id = 100;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/101.png' where id = 101;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/102.png' where id = 102;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/103.png' where id = 103;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/104.png' where id = 104;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/105.png' where id = 105;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/106.png' where id = 106;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/107.png' where id = 107;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/108.png' where id = 108;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/109.png' where id = 109;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/110.png' where id = 110;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/111.png' where id = 111;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/112.png' where id = 112;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/113.png' where id = 113;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/114.png' where id = 114;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/115.png' where id = 115;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/116.png' where id = 116;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/117.png' where id = 117;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/118.png' where id = 118;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/119.png' where id = 119;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/120.png' where id = 120;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/121.png' where id = 121;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/122.png' where id = 122;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/123.png' where id = 123;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/124.png' where id = 124;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/125.png' where id = 125;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/126.png' where id = 126;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/127.png' where id = 127;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/128.png' where id = 128;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/129.png' where id = 129;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/130.png' where id = 130;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/131.png' where id = 131;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/132.png' where id = 132;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/133.png' where id = 133;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/134.png' where id = 134;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/135.png' where id = 135;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/136.png' where id = 136;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/137.png' where id = 137;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/138.png' where id = 138;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/139.png' where id = 139;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/140.png' where id = 140;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/141.png' where id = 141;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/142.png' where id = 142;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/143.png' where id = 143;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/144.png' where id = 144;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/145.png' where id = 145;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/146.png' where id = 146;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/147.png' where id = 147;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/148.png' where id = 148;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/149.png' where id = 149;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/150.png' where id = 150;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/151.png' where id = 151;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/152.png' where id = 152;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/153.png' where id = 153;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/154.png' where id = 154;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/155.png' where id = 155;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/156.png' where id = 156;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/157.png' where id = 157;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/158.png' where id = 158;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/159.png' where id = 159;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/160.png' where id = 160;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/161.png' where id = 161;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/162.png' where id = 162;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/163.png' where id = 163;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/164.png' where id = 164;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/165.png' where id = 165;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/166.png' where id = 166;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/167.png' where id = 167;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/168.png' where id = 168;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/169.png' where id = 169;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/170.png' where id = 170;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/171.png' where id = 171;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/172.png' where id = 172;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/173.png' where id = 173;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/174.png' where id = 174;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/175.png' where id = 175;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/176.png' where id = 176;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/177.png' where id = 177;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/178.png' where id = 178;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/179.png' where id = 179;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/180.png' where id = 180;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/181.png' where id = 181;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/182.png' where id = 182;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/183.png' where id = 183;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/184.png' where id = 184;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/185.png' where id = 185;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/186.png' where id = 186;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/187.png' where id = 187;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/188.png' where id = 188;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/189.png' where id = 189;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/190.png' where id = 190;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/191.png' where id = 191;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/192.png' where id = 192;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/193.png' where id = 193;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/194.png' where id = 194;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/195.png' where id = 195;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/196.png' where id = 196;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/197.png' where id = 197;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/198.png' where id = 198;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/199.png' where id = 199;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/200.png' where id = 200;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/201.png' where id = 201;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/202.png' where id = 202;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/203.png' where id = 203;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/204.png' where id = 204;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/205.png' where id = 205;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/206.png' where id = 206;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/207.png' where id = 207;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/208.png' where id = 208;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/209.png' where id = 209;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/210.png' where id = 210;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/211.png' where id = 211;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/212.png' where id = 212;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/213.png' where id = 213;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/214.png' where id = 214;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/215.png' where id = 215;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/216.png' where id = 216;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/217.png' where id = 217;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/218.png' where id = 218;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/219.png' where id = 219;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/220.png' where id = 220;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/221.png' where id = 221;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/222.png' where id = 222;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/223.png' where id = 223;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/224.png' where id = 224;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/225.png' where id = 225;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/226.png' where id = 226;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/227.png' where id = 227;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/228.png' where id = 228;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/229.png' where id = 229;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/230.png' where id = 230;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/231.png' where id = 231;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/232.png' where id = 232;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/233.png' where id = 233;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/234.png' where id = 234;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/235.png' where id = 235;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/236.png' where id = 236;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/237.png' where id = 237;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/238.png' where id = 238;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/239.png' where id = 239;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/240.png' where id = 240;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/241.png' where id = 241;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/242.png' where id = 242;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/243.png' where id = 243;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/244.png' where id = 244;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/245.png' where id = 245;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/246.png' where id = 246;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/247.png' where id = 247;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/248.png' where id = 248;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/249.png' where id = 249;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/250.png' where id = 250;
update cards set image = 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/home/shiny/251.png' where id = 251;
