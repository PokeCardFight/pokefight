USE pokefight_db;
INSERT INTO items(cost,name,rounds,value) VALUES
                                              ('2','Pebble','1','10'),
                                              ('4','Super Stone','1', '25'),
                                              ('6','Hyper Boulder','1','50'),
                                              ('2','Sandal','1','0'),
                                              ('4','Super Boot', '2','0'),
                                              ('6','Sleepy Slipper','3','0'),
                                              ('2','Potion','1','-20'),
                                              ('5','Super Potion','1','-50'),
                                              ('8','Hyper Potion','1','-100');

INSERT INTO cards (name, hp, attack, image, type, rarity, subtype) VALUES
                                                                       ('Bulbasaur',   40, 20, 'https://images.pokemontcg.io/base4/67.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Ivysaur',     60, 30, 'https://images.pokemontcg.io/base4/44.png', 'Grass', 'Uncommon', 'Stage 1'),
                                                                       ('Venusaur',    100, 60, 'https://images.pokemontcg.io/base4/18.png', 'Grass', 'Rare', 'Stage 2'),
                                                                       ('Charmander',  50, 10, 'https://images.pokemontcg.io/base1/46.png', 'Fire', 'Common', 'Basic'),
                                                                       ('Charmeleon',  80, 30, 'https://images.pokemontcg.io/base1/24.png', 'Fire', 'Uncommon', 'Stage 1'),
                                                                       ('Charizard',   120, 100, 'https://images.pokemontcg.io/base1/4.png', 'Fire', 'Rare', 'Stage 2'),
                                                                       ('Squirtle',    40, 10, 'https://images.pokemontcg.io/base4/93.png', 'Water', 'Common', 'Basic'),
                                                                       ('Wartortle',   70, 40, 'https://images.pokemontcg.io/base4/63.png', 'Water', 'Uncommon', 'Stage 1'),
                                                                       ('Blastoise',   100, 40, 'https://images.pokemontcg.io/base1/2.png', 'Water', 'Rare', 'Stage 2'),
                                                                       ('Caterpie',    40, 10, 'https://images.pokemontcg.io/base1/45.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Metapod',     70, 20, 'https://images.pokemontcg.io/base1/54.png', 'Grass', 'Common', 'Stage 1'),
                                                                       ('Butterfree',  70, 20, 'https://images.pokemontcg.io/base4/34.png', 'Grass', 'Uncommon', 'Stage 2'),
                                                                       ('Weedle',      40, 10, 'https://images.pokemontcg.io/base4/100.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Kakuna',      80, 20, 'https://images.pokemontcg.io/base4/47.png', 'Grass', 'Uncommon', 'Stage 1'),
                                                                       ('Beedrill',    80, 30, 'https://images.pokemontcg.io/base1/17.png', 'Grass', 'Rare', 'Stage 2'),
                                                                       ('Pidgey',      40, 10, 'https://images.pokemontcg.io/base1/57.png', 'Colorless', 'Common', 'Basic'),
                                                                       ('Pidgeotto',   60, 20, 'https://images.pokemontcg.io/base1/22.png', 'Colorless', 'Rare', 'Stage 1'),
                                                                       ('Pidgeot',     80, 20, 'https://images.pokemontcg.io/base4/14.png', 'Colorless', 'Rare', 'Stage 2'),
                                                                       ('Rattata',     30, 20, 'https://images.pokemontcg.io/base4/89.png', 'Colorless', 'Common', 'Basic'),
                                                                       ('Raticate',    60, 20, 'https://images.pokemontcg.io/base4/58.png', 'Colorless', 'Uncommon', 'Stage 1'),
                                                                       ('Spearow',     50, 10, 'https://images.pokemontcg.io/base4/92.png', 'Colorless', 'Common', 'Basic'),
                                                                       ('Fearow',      70, 20, 'https://images.pokemontcg.io/base4/41.png', 'Colorless', 'Uncommon', 'Stage 1'),
                                                                       ('Ekans',       50, 10, 'https://images.pokemontcg.io/base5/56.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Arbok',       60, 10, 'https://images.pokemontcg.io/base3/31.png', 'Grass', 'Rare', 'Stage 1'),
                                                                       ('Pikachu',     40, 10, 'https://images.pokemontcg.io/base4/87.png', 'Lightning', 'Common', 'Basic'),
                                                                       ('Raichu',      80, 20, 'https://images.pokemontcg.io/base4/16.png', 'Lightning', 'Rare', 'Stage 1'),
                                                                       ('Sandshrew',   40, 10, 'https://images.pokemontcg.io/base4/91.png', 'Fighting', 'Common', 'Basic'),
                                                                       ('Sandslash',   70, 20, 'https://images.pokemontcg.io/base3/41.png', 'Fighting', 'Uncommon', 'Stage 1'),
                                                                       ('Nidoran ♀',   60, 10, 'https://images.pokemontcg.io/base4/82.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Nidorina',    70, 30, 'https://images.pokemontcg.io/base4/53.png', 'Grass', 'Uncommon', 'Stage 1'),
                                                                       ('Nidoqueen',   90, 20, 'https://images.pokemontcg.io/base4/12.png', 'Grass', 'Rare', 'Stage 2'),
                                                                       ('Nidoran ♂',   40, 30, 'https://images.pokemontcg.io/base4/83.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Nidorino',    60, 30, 'https://images.pokemontcg.io/base4/54.png', 'Grass', 'Uncommon', 'Stage 1'),
                                                                       ('Nidoking',    90, 30, 'https://images.pokemontcg.io/base4/11.png', 'Grass', 'Rare', 'Stage 2'),
                                                                       ('Clefairy',    40, 0, 'https://images.pokemontcg.io/base1/5.png', 'Colorless', 'Rare', 'Basic'),
                                                                       ('Clefable',    70, 0, 'https://images.pokemontcg.io/base4/5.png', 'Colorless', 'Rare', 'Stage 1'),
                                                                       ('Vulpix',      50, 10, 'https://images.pokemontcg.io/base4/99.png', 'Fire', 'Common', 'Basic'),
                                                                       ('Ninetales',   80, 80, 'https://images.pokemontcg.io/base4/13.png', 'Fire', 'Rare', 'Stage 1'),
                                                                       ('Jigglypuff',  60, 20, 'https://images.pokemontcg.io/base4/77.png', 'Colorless', 'Common', 'Basic'),
                                                                       ('Wigglytuff',  80, 10, 'https://images.pokemontcg.io/base4/19.png', 'Colorless', 'Rare', 'Stage 1'),
                                                                       ('Zubat',       40, 10, 'https://images.pokemontcg.io/base5/70.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Golbat',      60, 30, 'https://images.pokemontcg.io/base3/34.png', 'Grass', 'Uncommon', 'Stage 1'),
                                                                       ('Oddish',      50, 10, 'https://images.pokemontcg.io/base2/58.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Gloom',       60, 20, 'https://images.pokemontcg.io/base2/37.png', 'Grass', 'Uncommon', 'Stage 1'),
                                                                       ('Vileplume',   80, 40, 'https://images.pokemontcg.io/base2/15.png', 'Grass', 'Rare', 'Stage 2'),
                                                                       ('Paras',       40, 20, 'https://images.pokemontcg.io/base4/85.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Parasect',    60, 30, 'https://images.pokemontcg.io/base4/55.png', 'Grass', 'Uncommon', 'Stage 1'),
                                                                       ('Venonat',     40, 10, 'https://images.pokemontcg.io/base4/97.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Venomoth',    70, 10, 'https://images.pokemontcg.io/base4/31.png', 'Grass', 'Rare', 'Stage 1'),
                                                                       ('Diglett',     30, 10, 'https://images.pokemontcg.io/base4/71.png', 'Fighting', 'Common', 'Basic'),
                                                                       ('Dugtrio',     70, 40, 'https://images.pokemontcg.io/base4/23.png', 'Fighting', 'Rare', 'Stage 1'),
                                                                       ('Meowth',      50, 10, 'https://images.pokemontcg.io/base4/80.png', 'Colorless', 'Common', 'Basic'),
                                                                       ('Persian',     70, 20, 'https://images.pokemontcg.io/base4/56.png', 'Colorless', 'Uncommon', 'Stage 1'),
                                                                       ('Psyduck',     50, 0, 'https://images.pokemontcg.io/base3/53.png', 'Water', 'Common', 'Basic'),
                                                                       ('Golduck',     70, 10, 'https://images.pokemontcg.io/base3/35.png', 'Water', 'Uncommon', 'Stage 1'),
                                                                       ('Mankey',      30, 10, 'https://images.pokemontcg.io/base2/55.png', 'Fighting', 'Common', 'Basic'),
                                                                       ('Primeape',    70, 20, 'https://images.pokemontcg.io/base2/43.png', 'Fighting', 'Uncommon', 'Stage 1'),
                                                                       ('Growlithe',   60, 20, 'https://images.pokemontcg.io/base4/42.png', 'Fire', 'Uncommon', 'Basic'),
                                                                       ('Arcanine',    100, 50, 'https://images.pokemontcg.io/base1/23.png', 'Fire', 'Uncommon', 'Stage 1'),
                                                                       ('Poliwag',     40, 10, 'https://images.pokemontcg.io/base1/59.png', 'Water', 'Common', 'Basic'),
                                                                       ('Poliwhirl',   60, 30, 'https://images.pokemontcg.io/base1/38.png', 'Water', 'Uncommon', 'Stage 1'),
                                                                       ('Poliwrath',   90, 30, 'https://images.pokemontcg.io/base1/13.png', 'Water', 'Rare', 'Stage 2'),
                                                                       ('Abra',        30, 10, 'https://images.pokemontcg.io/base1/43.png', 'Psychic', 'Common', 'Basic'),
                                                                       ('Kadabra',     60, 50, 'https://images.pokemontcg.io/base1/32.png', 'Psychic', 'Uncommon', 'Stage 1'),
                                                                       ('Alakazam',    80, 30, 'https://images.pokemontcg.io/base1/1.png', 'Psychic', 'Rare', 'Stage 2'),
                                                                       ('Machop',      50, 20, 'https://images.pokemontcg.io/base1/52.png', 'Fighting', 'Common', 'Basic'),
                                                                       ('Machoke',     80, 50, 'https://images.pokemontcg.io/base1/34.png', 'Fighting', 'Uncommon', 'Stage 1'),
                                                                       ('Machamp',     100, 60, 'https://images.pokemontcg.io/base1/8.png', 'Fighting', 'Rare', 'Stage 2'),
                                                                       ('Bellsprout',  40, 10, 'https://images.pokemontcg.io/base4/66.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Weepinbell',  70, 10, 'https://images.pokemontcg.io/base4/64.png', 'Grass', 'Uncommon', 'Stage 1'),
                                                                       ('Victreebel',  80, 20, 'https://images.pokemontcg.io/base4/32.png', 'Grass', 'Rare', 'Stage 2'),
                                                                       ('Tentacool',   30, 10, 'https://images.pokemontcg.io/base3/56.png', 'Water', 'Common', 'Basic'),
                                                                       ('Tentacruel',  60, 0, 'https://images.pokemontcg.io/base3/44.png', 'Water', 'Uncommon', 'Stage 1'),
                                                                       ('Geodude',     50, 10, 'https://images.pokemontcg.io/base3/47.png', 'Fighting', 'Common', 'Basic'),
                                                                       ('Graveler',    60, 0, 'https://images.pokemontcg.io/base3/37.png', 'Fighting', 'Uncommon', 'Stage 1'),
                                                                       ('Golem',      80, 60, 'https://images.pokemontcg.io/base3/36.png', 'Fighting', 'Uncommon', 'Stage 2'),
                                                                       ('Ponyta',      40, 20, 'https://images.pokemontcg.io/base1/60.png', 'Fire', 'Common', 'Basic'),
                                                                       ('Rapidash',    70, 20, 'https://images.pokemontcg.io/base2/44.png', 'Fire', 'Uncommon', 'Stage 1'),
                                                                       ('Slowpoke',    50, 10, 'https://images.pokemontcg.io/base5/67.png', 'Psychic', 'Common', 'Basic'),
                                                                       ('Slowbro',     60, 20, 'https://images.pokemontcg.io/base3/43.png', 'Psychic', 'Uncommon', 'Stage 1'),
                                                                       ('Magnemite',   40, 10, 'https://images.pokemontcg.io/base4/79.png', 'Lightning', 'Common', 'Basic'),
                                                                       ('Magneton',    60, 30, 'https://images.pokemontcg.io/base4/9.png', 'Lightning', 'Rare', 'Stage 1'),
                                                                       ('Farfetch''d', 50, 30, 'https://images.pokemontcg.io/base4/40.png', 'Colorless', 'Uncommon', 'Basic'),
                                                                       ('Doduo',       50, 10, 'https://images.pokemontcg.io/base4/72.png', 'Colorless', 'Common', 'Basic'),
                                                                       ('Dodrio',      70, 10, 'https://images.pokemontcg.io/base4/37.png', 'Colorless', 'Uncommon', 'Stage 1'),
                                                                       ('Seel',        60, 10, 'https://images.pokemontcg.io/base4/61.png', 'Water', 'Uncommon', 'Basic'),
                                                                       ('Dewgong',     80, 50, 'https://images.pokemontcg.io/base4/36.png', 'Water', 'Uncommon', 'Stage 1'),
                                                                       ('Grimer',      40, 10, 'https://images.pokemontcg.io/base5/57.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Muk',         70, 30, 'https://images.pokemontcg.io/base3/13.png', 'Grass', 'Rare', 'Stage 1'),
                                                                       ('Shellder',    30, 0, 'https://images.pokemontcg.io/base3/54.png', 'Water', 'Common', 'Basic'),
                                                                       ('Cloyster',    50, 30, 'https://images.pokemontcg.io/base3/32.png', 'Water', 'Uncommon', 'Stage 1'),
                                                                       ('Gastly',      30, 0, 'https://images.pokemontcg.io/base1/50.png', 'Psychic', 'Common', 'Basic'),
                                                                       ('Haunter',     60, 50, 'https://images.pokemontcg.io/base1/29.png', 'Psychic', 'Uncommon', 'Stage 1'),
                                                                       ('Gengar',      80, 30, 'https://images.pokemontcg.io/base3/20.png', 'Psychic', 'Rare', 'Stage 2'),
                                                                       ('Onix',        90, 10, 'https://images.pokemontcg.io/base1/56.png', 'Fighting', 'Common', 'Basic'),
                                                                       ('Drowzee',     50, 10, 'https://images.pokemontcg.io/base1/49.png', 'Psychic', 'Common', 'Basic'),
                                                                       ('Hypno',       90, 0, 'https://images.pokemontcg.io/base3/8.png', 'Psychic', 'Rare', 'Stage 1'),
                                                                       ('Krabby',      50, 0, 'https://images.pokemontcg.io/base3/51.png', 'Water', 'Common', 'Basic'),
                                                                       ('Kingler',     60, 10, 'https://images.pokemontcg.io/base3/38.png', 'Water', 'Uncommon', 'Stage 1'),
                                                                       ('Voltorb',     40, 10, 'https://images.pokemontcg.io/base4/98.png', 'Lightning', 'Common', 'Basic'),
                                                                       ('Electrode',   80, 50, 'https://images.pokemontcg.io/base4/25.png', 'Lightning', 'Rare', 'Stage 1'),
                                                                       ('Exeggcute',   50, 20, 'https://images.pokemontcg.io/base4/74.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Exeggutor',   80, 20, 'https://images.pokemontcg.io/base4/39.png', 'Grass', 'Uncommon', 'Stage 1'),
                                                                       ('Cubone',      40, 10, 'https://images.pokemontcg.io/base4/70.png', 'Fighting', 'Common', 'Basic'),
                                                                       ('Marowak',     60, 30, 'https://images.pokemontcg.io/base4/52.png', 'Fighting', 'Uncommon', 'Stage 1'),
                                                                       ('Hitmonlee',   60, 0, 'https://images.pokemontcg.io/base3/7.png', 'Fighting', 'Rare', 'Basic'),
                                                                       ('Hitmonchan',  70, 20, 'https://images.pokemontcg.io/base4/8.png', 'Fighting', 'Rare', 'Basic'),
                                                                       ('Lickitung',   90, 10, 'https://images.pokemontcg.io/base4/48.png', 'Colorless', 'Uncommon', 'Basic'),
                                                                       ('Koffing',     50, 10, 'https://images.pokemontcg.io/base1/51.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Weezing',     60, 20, 'https://images.pokemontcg.io/base3/45.png', 'Grass', 'Uncommon', 'Stage 1'),
                                                                       ('Rhyhorn',     70, 30, 'https://images.pokemontcg.io/base4/90.png', 'Fighting', 'Common', 'Basic'),
                                                                       ('Rhydon',      100, 30, 'https://images.pokemontcg.io/base4/59.png', 'Fighting', 'Uncommon', 'Stage 1'),
                                                                       ('Chansey',    120, 80, 'https://images.pokemontcg.io/base1/3.png', 'Colorless', 'Rare', 'Basic'),
                                                                       ('Tangela',     50, 20, 'https://images.pokemontcg.io/base1/66.png', 'Grass', 'Common', 'Basic'),
                                                                       ('Kangaskhan',  90, 20, 'https://images.pokemontcg.io/base4/26.png', 'Colorless', 'Rare', 'Basic'),
                                                                       ('Horsea',      40, 10, 'https://images.pokemontcg.io/base3/49.png', 'Water', 'Common', 'Basic'),
                                                                       ('Seadra',      60, 20, 'https://images.pokemontcg.io/base3/42.png', 'Water', 'Uncommon', 'Stage 1'),
                                                                       ('Goldeen',     40, 10, 'https://images.pokemontcg.io/base4/76.png', 'Water', 'Common', 'Basic'),
                                                                       ('Seaking',     70, 10, 'https://images.pokemontcg.io/base4/60.png', 'Water', 'Uncommon', 'Stage 1'),
                                                                       ('Staryu',      40, 20, 'https://images.pokemontcg.io/base4/95.png', 'Water', 'Common', 'Basic'),
                                                                       ('Starmie',     60, 20, 'https://images.pokemontcg.io/base4/94.png', 'Water', 'Common', 'Stage 1'),
                                                                       ('Mr. Mime',    40, 10, 'https://images.pokemontcg.io/base4/27.png', 'Psychic', 'Rare', 'Basic'),
                                                                       ('Scyther',     70, 30, 'https://images.pokemontcg.io/base4/17.png', 'Grass', 'Rare', 'Basic'),
                                                                       ('Jynx',        70, 10, 'https://images.pokemontcg.io/base4/45.png', 'Psychic', 'Uncommon', 'Basic'),
                                                                       ('Electabuzz',  70, 10, 'https://images.pokemontcg.io/base4/24.png', 'Lightning', 'Rare', 'Basic'),
                                                                       ('Magmar',      50, 30, 'https://images.pokemontcg.io/base1/36.png', 'Fire', 'Uncommon', 'Basic'),
                                                                       ('Pinsir',      60, 20, 'https://images.pokemontcg.io/base4/29.png', 'Grass', 'Rare', 'Basic'),
                                                                       ('Tauros',      60, 20, 'https://images.pokemontcg.io/base4/62.png', 'Colorless', 'Uncommon', 'Basic'),
                                                                       ('Magikarp',    30, 10, 'https://images.pokemontcg.io/base4/50.png', 'Water', 'Uncommon', 'Basic'),
                                                                       ('Gyarados',    100, 50, 'https://images.pokemontcg.io/base4/7.png', 'Water', 'Rare', 'Stage 1'),
                                                                       ('Lapras',      80, 10, 'https://images.pokemontcg.io/base3/10.png', 'Water', 'Rare', 'Basic'),
                                                                       ('Ditto',       50, 0, 'https://images.pokemontcg.io/base3/3.png', 'Colorless', 'Rare', 'Basic'),
                                                                       ('Eevee',       50, 10, 'https://images.pokemontcg.io/base2/51.png', 'Colorless', 'Common', 'Basic'),
                                                                       ('Vaporeon',    80, 10, 'https://images.pokemontcg.io/base2/12.png', 'Water', 'Uncommon', 'Stage 1'),
                                                                       ('Jolteon',     70, 10, 'https://images.pokemontcg.io/base2/20.png', 'Lightning', 'Uncommon', 'Stage 1'),
                                                                       ('Flareon',     70, 10, 'https://images.pokemontcg.io/base2/3.png', 'Fire', 'Uncommon', 'Stage 1'),
                                                                       ('Porygon',     30, 0, 'https://images.pokemontcg.io/base1/39.png', 'Colorless', 'Common', 'Basic'),
                                                                       ('Omanyte',     40, 10, 'https://images.pokemontcg.io/base3/52.png', 'Water', 'Common', 'Stage 1'),
                                                                       ('Omastar',     70, 20, 'https://images.pokemontcg.io/base3/40.png', 'Water', 'Uncommon', 'Stage 2'),
                                                                       ('Kabuto',      30, 10, 'https://images.pokemontcg.io/base3/50.png', 'Fighting', 'Common', 'Stage 1'),
                                                                       ('Kabutops',    60, 30, 'https://images.pokemontcg.io/base3/9.png', 'Fighting', 'Rare', 'Stage 2'),
                                                                       ('Aerodactyl',  60, 30, 'https://images.pokemontcg.io/base3/1.png', 'Fighting', 'Rare', 'Stage 1'),
                                                                       ('Snorlax',     90, 30, 'https://images.pokemontcg.io/base4/30.png', 'Colorless', 'Rare', 'Basic'),
                                                                       ('Articuno',    70, 30, 'https://images.pokemontcg.io/base3/2.png', 'Water', 'Rare', 'Basic'),
                                                                       ('Zapdos',      90, 60, 'https://images.pokemontcg.io/base4/20.png', 'Lightning', 'Rare', 'Basic'),
                                                                       ('Moltres',     70, 0, 'https://images.pokemontcg.io/base3/12.png', 'Fire', 'Rare', 'Basic'),
                                                                       ('Dratini',     40, 10, 'https://images.pokemontcg.io/base4/38.png', 'Colorless', 'Uncommon', 'Basic'),
                                                                       ('Dragonair',   80, 30, 'https://images.pokemontcg.io/base4/22.png', 'Colorless', 'Rare', 'Stage 1'),
                                                                       ('Dragonite',   100, 40, 'https://images.pokemontcg.io/base3/4.png', 'Colorless', 'Rare', 'Stage 2'),
                                                                       ('Mewtwo',      60, 10, 'https://images.pokemontcg.io/base4/10.png', 'Psychic', 'Rare', 'Basic');

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