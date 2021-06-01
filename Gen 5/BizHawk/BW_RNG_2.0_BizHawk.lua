mdword = memory.read_u32_le
mword = memory.read_u16_le
mbyte = memory.readbyte
rshift = bit.rshift
lshift = bit.lshift
band = bit.band
bxor = bit.bxor
bor = bit.bor
floor = math.floor

BlockA = {1,1,1,1,1,1, 2,2,3,4,3,4, 2,2,3,4,3,4, 2,2,3,4,3,4}
BlockB = {2,2,3,4,3,4, 1,1,1,1,1,1, 3,4,2,2,4,3, 3,4,2,2,4,3}
BlockC = {3,4,2,2,4,3, 3,4,2,2,4,3, 1,1,1,1,1,1, 4,3,4,3,2,2}
BlockD = {4,3,4,3,2,2, 4,3,4,3,2,2, 4,3,4,3,2,2, 1,1,1,1,1,1}

nature = {"Hardy", "Lonely", "Brave", "Adamant", "Naughty",
          "Bold", "Docile", "Relaxed", "Impish", "Lax",
          "Timid", "Hasty", "Serious", "Jolly", "Naive",
          "Modest", "Mild", "Quiet", "Bashful", "Rash",
          "Calm", "Gentle", "Sassy", "Careful", "Quirky"}

typeOrder = {"Fighting", "Flying", "Poison", "Ground",
            "Rock", "Bug", "Ghost", "Steel",
            "Fire", "Water", "Grass", "Electric",
            "Psychic", "Ice", "Dragon", "Dark"}

pokemon = {"None", "Bulbasaur", "Ivysaur", "Venusaur", "Charmander", "Charmeleon", "Charizard",
     "Squirtle", "Wartortle", "Blastoise", "Caterpie", "Metapod", "Butterfree",
     "Weedle", "Kakuna", "Beedrill", "Pidgey", "Pidgeotto", "Pidgeot", "Rattata", "Raticate",
     "Spearow", "Fearow", "Ekans", "Arbok", "Pikachu", "Raichu", "Sandshrew", "Sandslash",
     "NidoranF", "Nidorina", "Nidoqueen", "NidoranM", "Nidorino", "Nidoking",
     "Clefairy", "Clefable", "Vulpix", "Ninetales", "Jigglypuff", "Wigglytuff",
     "Zubat", "Golbat", "Oddish", "Gloom", "Vileplume", "Paras", "Parasect", "Venonat", "Venomoth",
     "Diglett", "Dugtrio", "Meowth", "Persian", "Psyduck", "Golduck", "Mankey", "Primeape",
     "Growlithe", "Arcanine", "Poliwag", "Poliwhirl", "Poliwrath", "Abra", "Kadabra", "Alakazam",
     "Machop", "Machoke", "Machamp", "Bellsprout", "Weepinbell", "Victreebel", "Tentacool", "Tentacruel",
     "Geodude", "Graveler", "Golem", "Ponyta", "Rapidash", "Slowpoke", "Slowbro",
     "Magnemite", "Magneton", "Farfetch'd", "Doduo", "Dodrio", "Seel", "Dewgong", "Grimer", "Muk",
     "Shellder", "Cloyster", "Gastly", "Haunter", "Gengar", "Onix", "Drowzee", "Hypno",
     "Krabby", "Kingler", "Voltorb", "Electrode", "Exeggcute", "Exeggutor", "Cubone", "Marowak",
     "Hitmonlee", "Hitmonchan", "Lickitung", "Koffing", "Weezing", "Rhyhorn", "Rhydon", "Chansey",
     "Tangela", "Kangaskhan", "Horsea", "Seadra", "Goldeen", "Seaking", "Staryu", "Starmie",
     "Mr. Mime", "Scyther", "Jynx", "Electabuzz", "Magmar", "Pinsir", "Tauros", "Magikarp", "Gyarados",
     "Lapras", "Ditto", "Eevee", "Vaporeon", "Jolteon", "Flareon", "Porygon", "Omanyte", "Omastar",
     "Kabuto", "Kabutops", "Aerodactyl", "Snorlax", "Articuno", "Zapdos", "Moltres",
     "Dratini", "Dragonair", "Dragonite", "Mewtwo", "Mew",

     "Chikorita", "Bayleef", "Meganium", "Cyndaquil", "Quilava", "Typhlosion",
     "Totodile", "Croconaw", "Feraligatr", "Sentret", "Furret", "Hoothoot", "Noctowl",
     "Ledyba", "Ledian", "Spinarak", "Ariados", "Crobat", "Chinchou", "Lanturn", "Pichu", "Cleffa",
     "Igglybuff", "Togepi", "Togetic", "Natu", "Xatu", "Mareep", "Flaaffy", "Ampharos", "Bellossom",
     "Marill", "Azumarill", "Sudowoodo", "Politoed", "Hoppip", "Skiploom", "Jumpluff", "Aipom",
     "Sunkern", "Sunflora", "Yanma", "Wooper", "Quagsire", "Espeon", "Umbreon", "Murkrow", "Slowking",
     "Misdreavus", "Unown", "Wobbuffet", "Girafarig", "Pineco", "Forretress", "Dunsparce", "Gligar",
     "Steelix", "Snubbull", "Granbull", "Qwilfish", "Scizor", "Shuckle", "Heracross", "Sneasel",
     "Teddiursa", "Ursaring", "Slugma", "Magcargo", "Swinub", "Piloswine", "Corsola", "Remoraid", "Octillery",
     "Delibird", "Mantine", "Skarmory", "Houndour", "Houndoom", "Kingdra", "Phanpy", "Donphan",
     "Porygon2", "Stantler", "Smeargle", "Tyrogue", "Hitmontop", "Smoochum", "Elekid", "Magby", "Miltank",
     "Blissey", "Raikou", "Entei", "Suicune", "Larvitar", "Pupitar", "Tyranitar", "Lugia", "Ho-Oh", "Celebi",

     "Treecko", "Grovyle", "Sceptile", "Torchic", "Combusken", "Blaziken", "Mudkip", "Marshtomp",
     "Swampert", "Poochyena", "Mightyena", "Zigzagoon", "Linoone", "Wurmple", "Silcoon", "Beautifly",
     "Cascoon", "Dustox", "Lotad", "Lombre", "Ludicolo", "Seedot", "Nuzleaf", "Shiftry",
     "Taillow", "Swellow", "Wingull", "Pelipper", "Ralts", "Kirlia", "Gardevoir", "Surskit",
     "Masquerain", "Shroomish", "Breloom", "Slakoth", "Vigoroth", "Slaking", "Nincada", "Ninjask",
     "Shedinja", "Whismur", "Loudred", "Exploud", "Makuhita", "Hariyama", "Azurill", "Nosepass",
     "Skitty", "Delcatty", "Sableye", "Mawile", "Aron", "Lairon", "Aggron", "Meditite", "Medicham",
     "Electrike", "Manectric", "Plusle", "Minun", "Volbeat", "Illumise", "Roselia", "Gulpin",
     "Swalot", "Carvanha", "Sharpedo", "Wailmer", "Wailord", "Numel", "Camerupt", "Torkoal",
     "Spoink", "Grumpig", "Spinda", "Trapinch", "Vibrava", "Flygon", "Cacnea", "Cacturne", "Swablu",
     "Altaria", "Zangoose", "Seviper", "Lunatone", "Solrock", "Barboach", "Whiscash", "Corphish",
     "Crawdaunt", "Baltoy", "Claydol", "Lileep", "Cradily", "Anorith", "Armaldo", "Feebas",
     "Milotic", "Castform", "Kecleon", "Shuppet", "Banette", "Duskull", "Dusclops", "Tropius",
     "Chimecho", "Absol", "Wynaut", "Snorunt", "Glalie", "Spheal", "Sealeo", "Walrein", "Clamperl",
     "Huntail", "Gorebyss", "Relicanth", "Luvdisc", "Bagon", "Shelgon", "Salamence", "Beldum",
     "Metang", "Metagross", "Regirock", "Regice", "Registeel", "Latias", "Latios", "Kyogre",
     "Groudon", "Rayquaza", "Jirachi", "Deoxys",

     "Turtwig", "Grotle", "Torterra", "Chimchar", "Monferno", "Infernape", "Piplup", "Prinplup",
     "Empoleon", "Starly", "Staravia", "Staraptor", "Bidoof", "Bibarel", "Kricketot", "Kricketune",
     "Shinx", "Luxio", "Luxray", "Budew", "Roserade", "Cranidos", "Rampardos", "Shieldon", "Bastiodon",
     "Burmy", "Wormadam", "Mothim", "Combee", "Vespiquen", "Pachirisu", "Buizel", "Floatzel", "Cherubi",
     "Cherrim", "Shellos", "Gastrodon", "Ambipom", "Drifloon", "Drifblim", "Buneary", "Lopunny",
     "Mismagius", "Honchkrow", "Glameow", "Purugly", "Chingling", "Stunky", "Skuntank", "Bronzor",
     "Bronzong", "Bonsly", "Mime Jr.", "Happiny", "Chatot", "Spiritomb", "Gible", "Gabite", "Garchomp",
     "Munchlax", "Riolu", "Lucario", "Hippopotas", "Hippowdon", "Skorupi", "Drapion", "Croagunk",
     "Toxicroak", "Carnivine", "Finneon", "Lumineon", "Mantyke", "Snover", "Abomasnow", "Weavile",
     "Magnezone", "Lickilicky", "Rhyperior", "Tangrowth", "Electivire", "Magmortar", "Togekiss",
     "Yanmega", "Leafeon", "Glaceon", "Gliscor", "Mamoswine", "Porygon-Z", "Gallade", "Probopass",
     "Dusknoir", "Froslass", "Rotom", "Uxie", "Mesprit", "Azelf", "Dialga", "Palkia", "Heatran",
     "Regigigas", "Giratina", "Cresselia", "Phione", "Manaphy", "Darkrai", "Shaymin", "Arceus",

     "Victini", "Snivy", "Servine", "Serperior", "Tepig", "Pignite", "Emboar", "Oshawott", "Dewott", "Samurott", "Patrat", "Watchog",
     "Lillipup", "Herdier", "Stoutland", "Purrloin", "Liepard", "Pansage", "Simisage", "Pansear", "Simisear", "Panpour", "Simipour",
     "Munna", "Musharna", "Pidove", "Tranquill", "Unfezant", "Blitzle", "Zebstrika", "Roggenrola", "Boldore", "Gigalith", "Woobat",
     "Swoobat", "Drilbur", "Excadrill", "Audino", "Timburr", "Gurdurr", "Conkeldurr", "Tympole", "Palpitoad", "Seismitoad", "Throh",
     "Sawk", "Sewaddle", "Swadloon", "Leavanny", "Venipede", "Whirlipede", "Scolipede", "Cottonee", "Whimsicott", "Petilil",
     "Lilligant", "Basculin", "Sandile", "Krokorok", "Krookodile", "Darumaka", "Darmanitan", "Maractus", "Dwebble", "Crustle",
     "Scraggy", "Scrafty", "Sigilyph", "Yamask", "Cofagrigus", "Tirtouga", "Carracosta", "Archen", "Archeops", "Trubbish",
     "Garbodor", "Zorua", "Zoroark", "Minccino", "Cinccino", "Gothita", "Gothorita", "Gothitelle", "Solosis", "Duosion",
     "Reuniclus", "Ducklett", "Swanna", "Vanillite", "Vanillish", "Vanilluxe", "Deerling", "Sawsbuck", "Emolga", "Karrablast",
     "Escavalier", "Foongus", "Amoonguss", "Frillish", "Jellicent", "Alomomola", "Joltik", "Galvantula", "Ferroseed",
     "Ferrothorn", "Klink", "Klang", "Klinklang", "Tynamo", "Eelektrik", "Eelektross", "Elgyem", "Beheeyem", "Litwick",
     "Lampent", "Chandelure", "Axew", "Fraxure", "Haxorus", "Cubchoo", "Beartic", "Cryogonal", "Shelmet", "Accelgor",
     "Stunfisk", "Mienfoo", "Mienshao", "Druddigon", "Golett", "Golurk", "Pawniard", "Bisharp", "Bouffalant", "Rufflet",
     "Braviary", "Vullaby", "Mandibuzz", "Heatmor", "Durant", "Deino", "Zweilous", "Hydreigon", "Larvesta", "Volcarona", "Cobalion",
     "Terrakion", "Virizion", "Tornadus", "Thundurus", "Reshiram", "Zekrom", "Landorus", "Kyurem", "Keldeo", "Meloetta", "Genesect"}

abilities = {"None", "Stench", "Drizzle", "Speed Boost", "Battle Armor", "Sturdy", "Damp", "Limber", "Sand Veil", "Static", "Volt Absorb", "Water Absorb", "Oblivious", "Cloud Nine",
     "Compound Eyes", "Insomnia", "Color Change", "Immunity", "Flash Fire", "Shield Dust", "Own Tempo", "Suction Cups", "Intimidate", "Shadow Tag", "Rough Skin", "Wonder Guard", "Levitate",
     "Effect Spore", "Synchronize", "Clear Body", "Natural Cure", "Lightning Rod", "Serene Grace", "Swift Swim", "Chlorophyll", "Illuminate", "Trace", "Huge Power", "Poison Point",
     "Inner Focus", "Magma Armor", "Water Veil", "Magnet Pull", "Soundproof", "Rain Dish", "Sand Stream", "Pressure", "Thick Fat", "Early Bird", "Flame Body", "Run Away", "Keen Eye",
     "Hyper Cutter", "Pickup", "Truant", "Hustle", "Cute Charm", "Plus", "Minus", "Forecast", "Sticky Hold", "Shed Skin", "Guts", "Marvel Scale", "Liquid Ooze", "Overgrow", "Blaze", "Torrent",
     "Swarm", "Rock Head", "Drought", "Arena Trap", "Vital Spirit", "White Smoke", "Pure Power", "Shell Armor", "Air Lock", "Tangled Feet", "Motor Drive", "Rivalry", "Steadfast", "Snow Cloak",
     "Gluttony", "Anger Point", "Unburden", "Heatproof", "Simple", "Dry Skin", "Download", "Iron Fist", "Poison Heal", "Adaptability", "Skill Link", "Hydration", "Solar Power", "Quick Feet",
     "Normalize", "Sniper", "Magic Guard", "No Guard", "Stall", "Technician", "Leaf Guard", "Klutz", "Mold Breaker", "Super Luck", "Aftermath", "Anticipation", "Forewarn", "Unaware", "Tinted Lens",
     "Filter", "Slow Start", "Scrappy", "Storm Drain", "Ice Body", "Solid Rock", "Snow Warning", "Honey Gather", "Frisk", "Reckless", "Multitype", "Flower Gift", "Bad Dreams",

     "Pickpocket", "Sheer Force", "Contrary", "Unnerve", "Defiant", "Defeatist", "Cursed Body", "Healer", "Friend Guard",
     "Weak Armor", "Heavy Metal", "Light Metal", "Multiscale", "Toxic Boost", "Flare Boost", "Harvest", "Telepathy", "Moody",
     "Overcoat", "Poison Touch", "Regenerator", "Big Pecks", "Sand Rush", "Wonder Skin", "Analytic", "Illusion", "Imposter",
     "Infiltrator", "Mummy", "Moxie", "Justified", "Rattled", "Magic Bounce", "Sap Sipper", "Prankster", "Sand Force",
     "Iron Barbs", "Zen Mode", "Victory Star", "Turboblaze", "Teravolt"}

item = {"None", "Master Ball", "Ultra Ball", "Great Ball", "Poké Ball", "Safari Ball", "Net Ball", "Dive Ball",
     "Nest Ball", "Repeat Ball", "Timer Ball", "Luxury Ball", "Premier Ball", "Dusk Ball", "Heal Ball", "Quick Ball",
     "Cherish Ball", "Potion", "Antidote", "Burn Heal", "Ice Heal", "Awakening", "Parlyz Heal", "Full Restore",
     "Max Potion", "Hyper Potion", "Super Potion", "Full Heal", "Revive", "Max Revive", "Fresh Water", "Soda Pop",
     "Lemonade", "Moomoo Milk", "EnergyPowder", "Energy Root", "Heal Powder", "Revival Herb", "Ether", "Max Ether", "Elixir",
     "Max Elixir", "Lava Cookie", "Berry Juice", "Sacred Ash", "HP Up", "Protein", "Iron", "Carbos", "Calcium", "Rare Candy",
     "PP Up", "Zinc", "PP Max", "Old Gateau", "Guard Spec.", "Dire Hit", "X Attack", "X Defend", "X Speed", "X Accuracy", "X Special",
     "X Sp. Def", "Poké Doll", "Fluffy Tail", "Blue Flute", "Yellow Flute", "Red Flute", "Black Flute", "White Flute", "Shoal Salt",
     "Shoal Shell", "Red Shard", "Blue Shard", "Yellow Shard", "Green Shard", "Super Repel", "Max Repel", "Escape Rope", "Repel", "Sun Stone",
     "Moon Stone", "Fire Stone", "Thunder Stone", "Water Stone", "Leaf Stone", "TinyMushroom", "Big Mushroom", "Pearl", "Big Pearl",
     "Stardust", "Star Piece", "Nugget", "Heart Scale", "Honey", "Growth Mulch", "Damp Mulch", "Stable Mulch", "Gooey Mulch",
     "Root Fossil", "Claw Fossil", "Helix Fossil", "Dome Fossil", "Old Amber", "Armor Fossil", "Skull Fossil", "Rare Bone", "Shiny Stone",
     "Dusk Stone", "Dawn Stone", "Oval Stone", "Odd Keystone", "Griseous Orb", "unknown", "unknown", "unknown", "Douse Drive",
     "Shock Drive", "Burn Drive", "Chill Drive",

     "unknown", "unknown", "unknown", "unknown", "unknown", "unknown", "unknown", "unknown", "unknown", "unknown",
     "unknown", "unknown", "unknown", "unknown",

     "Sweet Heart", "Adamant Orb", "Lustrous Orb", "Greet Mail",
     "Favored Mail", "RSVP Mail", "Thanks Mail", "Inquiry Mail", "Like Mail", "Reply Mail", "BridgeMail S", "BridgeMail D", "BridgeMail T",
     "BridgeMail V", "BridgeMail M", "Cheri Berry", "Chesto Berry", "Pecha Berry", "Rawst Berry", "Aspear Berry", "Leppa Berry",
     "Oran Berry", "Persim Berry", "Lum Berry", "Sitrus Berry", "Figy Berry", "Wiki Berry", "Mago Berry", "Aguav Berry", "Iapapa Berry",
     "Razz Berry", "Bluk Berry", "Nanab Berry", "Wepear Berry", "Pinap Berry", "Pomeg Berry", "Kelpsy Berry", "Qualot Berry",
     "Hondew Berry", "Grepa Berry", "Tamato Berry", "Cornn Berry", "Magost Berry", "Rabuta Berry", "Nomel Berry", "Spelon Berry",
     "Pamtre Berry", "Watmel Berry", "Durin Berry", "Belue Berry", "Occa Berry", "Passho Berry", "Wacan Berry", "Rindo Berry",
     "Yache Berry", "Chople Berry", "Kebia Berry", "Shuca Berry", "Coba Berry", "Payapa Berry", "Tanga Berry", "Charti Berry",
     "Kasib Berry", "Haban Berry", "Colbur Berry", "Babiri Berry", "Chilan Berry", "Liechi Berry", "Ganlon Berry", "Salac Berry",
     "Petaya Berry", "Apicot Berry", "Lansat Berry", "Starf Berry", "Enigma Berry", "Micle Berry", "Custap Berry", "Jaboca Berry",
     "Rowap Berry", "BrightPowder", "White Herb", "Macho Brace", "Exp. Share", "Quick Claw", "Soothe Bell", "Mental Herb", "Choice Band",
     "King's Rock", "SilverPowder", "Amulet Coin", "Cleanse Tag", "Soul Dew", "DeepSeaTooth", "DeepSeaScale", "Smoke Ball", "Everstone",
     "Focus Band", "Lucky Egg", "Scope Lens", "Metal Coat", "Leftovers", "Dragon Scale", "Light Ball", "Soft Sand", "Hard Stone", "Miracle Seed",
     "BlackGlasses", "Black Belt", "Magnet", "Mystic Water", "Sharp Beak", "Poison Barb", "NeverMeltIce", "Spell Tag", "TwistedSpoon",
     "Charcoal", "Dragon Fang", "Silk Scarf", "Up-Grade", "Shell Bell", "Sea Incense", "Lax Incense", "Lucky Punch", "Metal Powder",
     "Thick Club", "Stick", "Red Scarf", "Blue Scarf", "Pink Scarf", "Green Scarf", "Yellow Scarf", "Wide Lens", "Muscle Band", "Wise Glasses",
     "Expert Belt", "Light Clay", "Life Orb", "Power Herb", "Toxic Orb", "Flame Orb", "Quick Powder", "Focus Sash", "Zoom Lens", "Metronome",
     "Iron Ball", "Lagging Tail", "Destiny Knot", "Black Sludge", "Icy Rock", "Smooth Rock", "Heat Rock", "Damp Rock", "Grip Claw",
     "Choice Scarf", "Sticky Barb", "Power Bracer", "Power Belt", "Power Lens", "Power Band", "Power Anklet", "Power Weight", "Shed Shell",
     "Big Root", "Choice Specs", "Flame Plate", "Splash Plate", "Zap Plate", "Meadow Plate", "Icicle Plate", "Fist Plate", "Toxic Plate",
     "Earth Plate", "Sky Plate", "Mind Plate", "Insect Plate", "Stone Plate", "Spooky Plate", "Draco Plate", "Dread Plate", "Iron Plate",
     "Odd Incense", "Rock Incense", "Full Incense", "Wave Incense", "Rose Incense", "Luck Incense", "Pure Incense", "Protector", "Electirizer",
     "Magmarizer", "Dubious Disc", "Reaper Cloth", "Razor Claw", "Razor Fang", "TM01", "TM02", "TM03", "TM04", "TM05", "TM06", "TM07",
     "TM08", "TM09", "TM10", "TM11", "TM12", "TM13", "TM14", "TM15", "TM16", "TM17", "TM18", "TM19", "TM20", "TM21", "TM22", "TM23", "TM24",
     "TM25", "TM26", "TM27", "TM28", "TM29", "TM30", "TM31", "TM32", "TM33", "TM34", "TM35", "TM36", "TM37", "TM38", "TM39", "TM40", "TM41",
     "TM42", "TM43", "TM44", "TM45", "TM46", "TM47", "TM48", "TM49", "TM50", "TM51", "TM52", "TM53", "TM54", "TM55", "TM56", "TM57", "TM58",
     "TM59", "TM60", "TM61", "TM62", "TM63", "TM64", "TM65", "TM66", "TM67", "TM68", "TM69", "TM70", "TM71", "TM72", "TM73", "TM74", "TM75",
     "TM76", "TM77", "TM78", "TM79", "TM80", "TM81", "TM82", "TM83", "TM84", "TM85", "TM86", "TM87", "TM88", "TM89", "TM90", "TM91", "TM92",
     "HM01", "HM02", "HM03", "HM04", "HM05", "HM06", "unknown", "unknown", "Explorer Kit", "Loot Sack", "Rule Book", "Poké Radar", "Point Card",
     "Journal", "Seal Case", "Fashion Case", "Seal Bag", "Pal Pad", "Works Key", "Old Charm", "Galactic Key", "Red Chain", "Town Map",
     "Vs. Seeker", "Coin Case", "Old Rod", "Good Rod", "Super Rod", "Sprayduck", "Poffin Case", "Bicycle", "Suite Key", "Oak's Letter",
     "Lunar Wing", "Member Card", "Azure Flute", "S.S. Ticket", "Contest Pass", "Magma Stone", "Parcel", "Coupon 1", "Coupon 2", "Coupon 3",
     "Storage Key", "SecretPotion", "Vs. Recorder", "Gracidea", "Secret Key", "Apricorn Box", "Unown Report", "Berry Pots", "Dowsing MCHN",
     "Blue Card", "SlowpokeTail", "Clear Bell", "Card Key", "Basement Key", "SquirtBottle", "Red Scale", "Lost Item", "Pass", "Machine Part",
     "Silver Wing", "Rainbow Wing", "Mystery Egg", "Red Apricorn", "Ylw Apricorn", "Blu Apricorn", "Grn Apricorn", "Pnk Apricorn", "Wht Apricorn",
     "Blk Apricorn", "Fast Ball", "Level Ball", "Lure Ball", "Heavy Ball", "Love Ball", "Friend Ball", "Moon Ball", "Sport Ball", "Park Ball", "Photo Album",
     "GB Sounds", "Tidal Bell", "RageCandyBar", "Data Card 01", "Data Card 02", "Data Card 03", "Data Card 04", "Data Card 05", "Data Card 06", "Data Card 07",
     "Data Card 08", "Data Card 09", "Data Card 10", "Data Card 11", "Data Card 12", "Data Card 13", "Data Card 14", "Data Card 15", "Data Card 16", "Data Card 17",
     "Data Card 18", "Data Card 19", "Data Card 20", "Data Card 21", "Data Card 22", "Data Card 23", "Data Card 24", "Data Card 25", "Data Card 26", "Data Card 27",
     "Jade Orb", "Lock Capsule", "Red Orb", "Blue Orb", "Enigma Stone", "Prism Scale", "Eviolite", "Float Stone", "Rocky Helmet", "Air Balloon", "Red Card",
     "Ring Target", "Binding Band", "Absorb Bulb", "Cell Battery", "Eject Button", "Fire Gem", "Water Gem", "Electric Gem", "Grass Gem", "Ice Gem", "Fighting Gem",
     "Poison Gem", "Ground Gem", "Flying Gem", "Psychic Gem", "Bug Gem", "Rock Gem", "Ghost Gem", "Dragon Gem", "Dark Gem", "Steel Gem", "Normal Gem", "Health Wing",
     "Muscle Wing", "Resist Wing", "Genius Wing", "Clever Wing", "Swift Wing", "Pretty Wing", "Cover Fossil", "Plume Fossil", "Liberty Pass", "Pass Orb", "Dream Ball",
     "Poké Toy", "Prop Case", "Dragon Skull", "BalmMushroom", "Big Nugget", "Pearl String", "Comet Shard", "Relic Copper", "Relic Silver", "Relic Gold", "Relic Vase",
     "Relic Band", "Relic Statue", "Relic Crown", "Casteliacone", "Dire Hit 2", "X Speed 2", "X Special 2", "X Sp. Def 2", "X Defend 2", "X Attack 2", "X Accuracy 2",
     "X Speed 3", "X Special 3", "X Sp. Def 3", "X Defend 3", "X Attack 3", "X Accuracy 3", "X Speed 6", "X Special 6", "X Sp. Def 6", "X Defend 6", "X Attack 6", "X Accuracy 6",
     "Ability Urge", "Item Drop", "Item Urge", "Reset Urge", "Dire Hit 3", "Light Stone", "Dark Stone", "TM93", "TM94", "TM95", "Xtransceiver", "God Stone", "Gram 1",
     "Gram 2", "Gram 3", "Xtransceiver", "Medal Box", "DNA Splicers", "DNA Splicers", "Permit", "Oval Charm", "Shiny Charm", "Plasma Card", "Grubby Hanky", "Colress MCHN",
     "Dropped Item", "Dropped Item", "Reveal Glass"}

moveName ={"--", "Pound", "Karate Chop", "Double Slap", "Comet Punch", "Mega Punch", "Pay Day", "Fire Punch", "Ice Punch", "Thunder Punch",
     "Scratch", "Vice Grip", "Guillotine", "Razor Wind", "Swords Dance", "Cut", "Gust", "Wing Attack", "Whirlwind", "Fly",
     "Bind", "Slam", "Vine Whip", "Stomp", "Double Kick", "Mega Kick", "Jump Kick", "Rolling Kick", "Sand Attack", "Headbutt",
     "Horn Attack", "Fury Attack", "Horn Drill", "Tackle", "Body Slam", "Wrap", "Take Down", "Thrash", "Double-Edge",
     "Tail Whip", "Poison Sting", "Twineedle", "Pin Missile", "Leer", "Bite", "Growl", "Roar", "Sing", "Supersonic", "Sonic Boom",
     "Disable", "Acid", "Ember", "Flamethrower", "Mist", "Water Gun", "Hydro Pump", "Surf", "Ice Beam", "Blizzard", "Psybeam",
     "Bubble Beam", "Aurora Beam", "Hyper Beam", "Peck", "Drill Peck", "Submission", "Low Kick", "Counter", "Seismic Toss",
     "Strength", "Absorb", "Mega Drain", "Leech Seed", "Growth", "Razor Leaf", "Solar Beam", "Poison Powder", "Stun Spore",
     "Sleep Powder", "Petal Dance", "String Shot", "Dragon Rage", "Fire Spin", "Thunder Shock", "Thunderbolt", "Thunder Wave",
     "Thunder", "Rock Throw", "Earthquake", "Fissure", "Dig", "Toxic", "Confusion", "Psychic", "Hypnosis", "Meditate",
     "Agility", "Quick Attack", "Rage", "Teleport", "Night Shade", "Mimic", "Screech", "Double Team", "Recover", "Harden",
     "Minimize", "Smokescreen", "Confuse Ray", "Withdraw", "Defense Curl", "Barrier", "Light Screen", "Haze", "Reflect",
     "Focus Energy", "Bide", "Metronome", "Mirror Move", "Self-Destruct", "Egg Bomb", "Lick", "Smog", "Sludge", "Bone Club",
     "Fire Blast", "Waterfall", "Clamp", "Swift", "Skull Bash", "Spike Cannon", "Constrict", "Amnesia", "Kinesis", "Soft-Boiled",
     "High Jump Kick", "Glare", "Dream Eater", "Poison Gas", "Barrage", "Leech Life", "Lovely Kiss", "Sky Attack", "Transform",
     "Bubble", "Dizzy Punch", "Spore", "Flash", "Psywave", "Splash", "Acid Armor", "Crabhammer", "Explosion", "Fury Swipes",
     "Bonemerang", "Rest", "Rock Slide", "Hyper Fang", "Sharpen", "Conversion", "Tri Attack", "Super Fang", "Slash",
     "Substitute", "Struggle", "Sketch", "Triple Kick", "Thief", "Spider Web", "Mind Reader", "Nightmare", "Flame Wheel",
     "Snore", "Curse", "Flail", "Conversion 2", "Aeroblast", "Cotton Spore", "Reversal", "Spite", "Powder Snow", "Protect",
     "Mach Punch", "Scary Face", "Feint Attack", "Sweet Kiss", "Belly Drum", "Sludge Bomb", "Mud-Slap", "Octazooka", "Spikes",
     "Zap Cannon", "Foresight", "Destiny Bond", "Perish Song", "Icy Wind", "Detect", "Bone Rush", "Lock-On", "Outrage",
     "Sandstorm", "Giga Drain", "Endure", "Charm", "Rollout", "False Swipe", "Swagger", "Milk Drink", "Spark", "Fury Cutter",
     "Steel Wing", "Mean Look", "Attract", "Sleep Talk", "Heal Bell", "Return", "Present", "Frustration", "Safeguard",
     "Pain Split", "Sacred Fire", "Magnitude", "Dynamic Punch", "Megahorn", "Dragon Breath", "Baton Pass", "Encore", "Pursuit",
     "Rapid Spin", "Sweet Scent", "Iron Tail", "Metal Claw", "Vital Throw", "Morning Sun", "Synthesis", "Moonlight", "Hidden Power",
     "Cross Chop", "Twister", "Rain Dance", "Sunny Day", "Crunch", "Mirror Coat", "Psych Up", "Extreme Speed", "Ancient Power",
     "Shadow Ball", "Future Sight", "Rock Smash", "Whirlpool", "Beat Up", "Fake Out", "Uproar", "Stockpile", "Spit Up",
     "Swallow", "Heat Wave", "Hail", "Torment", "Flatter", "Will-O-Wisp", "Memento", "Facade", "Focus Punch", "Smelling Salts",
     "Follow Me", "Nature Power", "Charge", "Taunt", "Helping Hand", "Trick", "Role Play", "Wish", "Assist", "Ingrain",
     "Superpower", "Magic Coat", "Recycle", "Revenge", "Brick Break", "Yawn", "Knock Off", "Endeavor", "Eruption", "Skill Swap",
     "Imprison", "Refresh", "Grudge", "Snatch", "Secret Power", "Dive", "Arm Thrust", "Camouflage", "Tail Glow", "Luster Purge",
     "Mist Ball", "Feather Dance", "Teeter Dance", "Blaze Kick", "Mud Sport", "Ice Ball", "Needle Arm", "Slack Off",
     "Hyper Voice", "Poison Fang", "Crush Claw", "Blast Burn", "Hydro Cannon", "Meteor Mash", "Astonish", "Weather Ball",
     "Aromatherapy", "Fake Tears", "Air Cutter", "Overheat", "Odor Sleuth", "Rock Tomb", "Silver Wind", "Metal Sound",
     "Grass Whistle", "Tickle", "Cosmic Power", "Water Spout", "Signal Beam", "Shadow Punch", "Extrasensory", "Sky Uppercut",
     "Sand Tomb", "Sheer Cold", "Muddy Water", "Bullet Seed", "Aerial Ace", "Icicle Spear", "Iron Defense", "Block", "Howl",
     "Dragon Claw", "Frenzy Plant", "Bulk Up", "Bounce", "Mud Shot", "Poison Tail", "Covet", "Volt Tackle", "Magical Leaf",
     "Water Sport", "Calm Mind", "Leaf Blade", "Dragon Dance", "Rock Blast", "Shock Wave", "Water Pulse", "Doom Desire",
     "Psycho Boost", "Roost", "Gravity", "Miracle Eye", "Wake-Up Slap", "Hammer Arm", "Gyro Ball", "Healing Wish", "Brine",
     "Natural Gift", "Feint", "Pluck", "Tailwind", "Acupressure", "Metal Burst", "U-turn", "Close Combat", "Payback", "Assurance",
     "Embargo", "Fling", "Psycho Shift", "Trump Card", "Heal Block", "Wring Out", "Power Trick", "Gastro Acid", "Lucky Chant",
     "Me First", "Copycat", "Power Swap", "Guard Swap", "Punishment", "Last Resort", "Worry Seed", "Sucker Punch", "Toxic Spikes",
     "Heart Swap", "Aqua Ring", "Magnet Rise", "Flare Blitz", "Force Palm", "Aura Sphere", "Rock Polish", "Poison Jab",
     "Dark Pulse", "Night Slash", "Aqua Tail", "Seed Bomb", "Air Slash", "X-Scissor", "Bug Buzz", "Dragon Pulse", "Dragon Rush",
     "Power Gem", "Drain Punch", "Vacuum Wave", "Focus Blast", "Energy Ball", "Brave Bird", "Earth Power", "Switcheroo",
     "Giga Impact", "Nasty Plot", "Bullet Punch", "Avalanche", "Ice Shard", "Shadow Claw", "Thunder Fang", "Ice Fang", "Fire Fang",
     "Shadow Sneak", "Mud Bomb", "Psycho Cut", "Zen Headbutt", "Mirror Shot", "Flash Cannon", "Rock Climb", "Defog",
     "Trick Room", "Draco Meteor", "Discharge", "Lava Plume", "Leaf Storm", "Power Whip", "Rock Wrecker", "Cross Poison", "Gunk Shot",
     "Iron Head", "Magnet Bomb", "Stone Edge", "Captivate", "Stealth Rock", "Grass Knot", "Chatter", "Judgment", "Bug Bite",
     "Charge Beam", "Wood Hammer", "Aqua Jet", "Attack Order", "Defend Order", "Heal Order", "Head Smash", "Double Hit",
     "Roar of Time", "Spacial Rend", "Lunar Dance", "Crush Grip", "Magma Storm", "Dark Void", "Seed Flare", "Ominous Wind", "Shadow Force",

     "Hone Claws", "Wide Guard", "Guard Split", "Power Split", "Wonder Room", "Psyshock", "Venoshock", "Autotomize", "Rage Powder",
     "Telekinesis", "Magic Room", "Smack Down", "Storm Throw", "Flame Burst", "Sludge Wave", "Quiver Dance", "Heavy Slam",
     "Synchronoise", "Electro Ball", "Soak", "Flame Charge", "Coil", "Low Sweep", "Acid Spray", "Foul Play", "Simple Beam",
     "Entrainment", "After You", "Round", "Echoed Voice", "Chip Away", "Clear Smog", "Stored Power", "Quick Guard", "Ally Switch",
     "Scald", "Shell Smash", "Heal Pulse", "Hex", "Sky Drop", "Shift Gear", "Circle Throw", "Incinerate", "Quash", "Acrobatics",
     "Reflect Type", "Retaliate", "Final Gambit", "Bestow", "Inferno", "Water Pledge", "Fire Pledge", "Grass Pledge",
     "Volt Switch", "Struggle Bug", "Bulldoze", "Frost Breath", "Dragon Tail", "Work Up", "Electroweb", "Wild Charge",
     "Drill Run", "Dual Chop", "Heart Stamp", "Horn Leech", "Sacred Sword", "Razor Shell", "Heat Crash", "Leaf Tornado",
     "Steamroller", "Cotton Guard", "Night Daze", "Psystrike", "Tail Slap", "Hurricane", "Head Charge", "Gear Grind",
     "Searing Shot", "Techno Blast", "Relic Song", "Secret Sword", "Glaciate", "Bolt Strike", "Blue Flare", "Fiery Dance",
     "Freeze Shock", "Ice Burn", "Snarl", "Icicle Crash", "V-create", "Fusion Flare", "Fusion Bolt"}

local mode = {"None", "Capture", "Breeding", "C-Gear", "Pandora", "Pokemon Info"}
local index = 1
local key = {}
local prevKey = {}
local midScreenWidth  = 0
local midScreenHeight = 0
local lateralPaddingWidth = 0

local prngAddr = 0
local mtSeedAddr = 0
local delay = 0
local initSeedHigh = 0
local initSeedLow = 0
local mtSeed = 0
local hitMtSeed = 0
local hitDelay = 0
local hitDate = "01/01/2000\n00:00:00"
local currSeedHigh = 0
local currSeedLow = 0
local tempCurrLow = 0
local ivsFrame = 0
local prevMtSeed = 0
local frame = 0
local initSet = 0

local idsAddr = 0
local tid = 0
local sid = 0

local mac = 0xDCE413  -- default MAC Address of BizHawk
local timehex = 0
local datehex = 0
local hour = 0
local minute = 0
local second = 0
local year = 0
local month = 0
local day = 0

local enemyAddr = 0
local cgearEnemyAddr = 0
local statsBoxAddr = 0
local boxAddr = 0
local partyAddr = 0

local location = {"Party", "Box"}
local locationIndex = 1
local partyCounterAddr = 0
local partyPosAddr = 0
local boxNumAddr = 0
local boxPosAddr = 0
local statsPartyPosAddr = 0
local statsBoxPosAddr = 0
local partyCheckAddr = 0
local isBoxCheck = 0
local isStatsPartyCheck = 0
local currPos = 0
local showStats = true

-- BlockA
local pokemonID = 0
local heldItem = 0
local OTID, OTSID
local friendship_or_steps_to_hatch
local ability
local hpev, atkev, defev, speev, spaev, spdev
local evs = {}

-- BlockB
local move = {}
local movepp = {}
local hpiv, atkiv, defiv, speiv, spaiv, spdiv
local ivspart = {}, ivs
local isEgg = 0
local nat

-- BlockD
local pkrs

local game = ""
local language = ""
local warning = ""

console.clear()

if mbyte(0X02FFFE0F) == 0x4A then  -- Check game language
 language = "JPN"
 prngAddr = 0x02216084
 mtSeedAddr = 0x022151B4
 idsAddr = 0x02234E20
 partyPosAddr = 0x022695F8
 boxNumAddr = 0x022695E0
 boxPosAddr = 0x022EB745
 statsPartyPosAddr = 0x022695E4
 statsBoxPosAddr = 0x022795F4
 partyCheckAddr = 0x022695EC
 enemyAddr = 0x0226AB54
 cgearEnemyAddr = 0x0225CC84
 statsBoxAddr = 0x0227986C
 boxAddr = 0x0221BE0C
 partyAddr = 0x02234814
 partyCounterAddr = 0x02234810
elseif mbyte(0X02FFFE0F) == 0x4F then
 language = "USA"
 prngAddr = 0x02216224
 mtSeedAddr = 0x02215354
 idsAddr = 0x02234FC0
 partyPosAddr = 0x02269798
 boxNumAddr = 0x02269780
 boxPosAddr = 0x022EB8E1
 statsPartyPosAddr = 0x02269784
 statsBoxPosAddr = 0x02279794
 partyCheckAddr = 0x0226978C
 enemyAddr = 0x0226ACF4
 cgearEnemyAddr = 0x0225CF10
 statsBoxAddr = 0x02279A0C
 boxAddr = 0x0221BFAC
 partyAddr = 0x022349B4
 partyCounterAddr = 0x022349B0
elseif mbyte(0X02FFFE0F) == 0x49 then
 language = "ITA"
 prngAddr = 0x02216124
 mtSeedAddr = 0x2215254
 idsAddr = 0x02234EC0
 partyPosAddr = 0x02269698
 boxNumAddr = 0x02269680
 boxPosAddr = 0x022EB7DD
 statsPartyPosAddr = 0x02269684
 statsBoxPosAddr = 0x02279694
 partyCheckAddr = 0x0226968C
 enemyAddr = 0x0226ABF4
 cgearEnemyAddr = 0x0225CE10
 statsBoxAddr = 0x0227990C
 boxAddr = 0x0221BEAC
 partyAddr = 0x022348B4
 partyCounterAddr = 0x022348B0
elseif mbyte(0X02FFFE0F) == 0x44 then
 language = "GER"
 prngAddr = 0x02216164
 mtSeedAddr = 0x02215294
 idsAddr = 0x02234F00
 partyPosAddr = 0x022696D8
 boxNumAddr = 0x022696C0
 boxPosAddr = 0x022EB81D
 statsPartyPosAddr = 0x022696C4
 statsBoxPosAddr = 0x022796D4
 partyCheckAddr = 0x022696CC
 enemyAddr = 0x0226AC34
 cgearEnemyAddr = 0x0225CE50
 statsBoxAddr = 0x0227994C
 boxAddr = 0x0221BEEC
 partyAddr = 0x022348F4
 partyCounterAddr = 0x022348F0
elseif mbyte(0X02FFFE0F) == 0x46 then
 language = "FRE"
 prngAddr = 0x022161A4
 mtSeedAddr = 0x022152D4
 idsAddr = 0x02234F40
 partyPosAddr = 0x02269718
 boxNumAddr = 0x02269700
 boxPosAddr = 0x022EB85D
 statsPartyPosAddr = 0x02269704
 statsBoxPosAddr = 0x02279714
 partyCheckAddr = 0x0226970C
 enemyAddr = 0x0226AC74
 cgearEnemyAddr = 0x0225CE90
 statsBoxAddr = 0x0227998C
 boxAddr = 0x0221BF2C
 partyAddr = 0x02234934
 partyCounterAddr = 0x02234930
elseif mbyte(0X02FFFE0F) == 0x53 then
 language = "SPA"
 prngAddr = 0x022161E4
 mtSeedAddr = 0x02215314
 idsAddr = 0x02234F80
 partyPosAddr = 0x02269758
 boxNumAddr = 0x02269740
 boxPosAddr = 0x022EB8A1
 statsPartyPosAddr = 0x02269744
 statsBoxPosAddr = 0x02279754
 partyCheckAddr = 0x0226974C
 enemyAddr = 0x0226ACB4
 cgearEnemyAddr = 0x0225CED0
 statsBoxAddr = 0x022799CC
 boxAddr = 0x0221BF6C
 partyAddr = 0x02234974
 partyCounterAddr = 0x02234970
elseif mbyte(0X02FFFE0F) == 0x4B then
 language = "KOR"
 prngAddr = 0x02216924
 mtSeedAddr = 0x02215A54
 idsAddr = 0x022356C0
 partyPosAddr = 0x02269E98
 boxNumAddr = 0x02269E80
 boxPosAddr = 0x022EBFE1
 statsPartyPosAddr = 0x02269E84
 statsBoxPosAddr = 0x02279E94
 partyCheckAddr = 0x02269E8C
 enemyAddr = 0x0226B3F4
 cgearEnemyAddr = 0x0225D610
 statsBoxAddr = 0x0227A10C
 boxAddr = 0x0221C6AC
 partyAddr = 0x022350B4
 partyCounterAddr = 0x022350B0
end

if mbyte(0x02FFFE0E) == 0x41 then  -- Check game version
 game = "White"
 if language ~= "KOR" and language ~= "SPA" then
  prngAddr = prngAddr + 0x20
  mtSeedAddr = mtSeedAddr + 0x20
  idsAddr = idsAddr + 0x20
  partyPosAddr = partyPosAddr + 0x20
  boxNumAddr = boxNumAddr + 0x20
  boxPosAddr = boxPosAddr + 0x20
  statsPartyPosAddr = statsPartyPosAddr + 0x20
  statsBoxPosAddr = statsBoxPosAddr + 0x20
  partyCheckAddr = partyCheckAddr + 0x20
  enemyAddr = enemyAddr + 0x20
  cgearEnemyAddr = cgearEnemyAddr + 0x20
  statsBoxAddr = statsBoxAddr + 0x20
  boxAddr = boxAddr + 0x20
  partyAddr = partyAddr + 0x20
  partyCounterAddr = partyCounterAddr + 0x20
 end
elseif mbyte(0x02FFFE0E) == 0x42 then
 game = "Black"
elseif mbyte(0x02FFFE0E) == 0x44 then
 game = "White 2"
elseif mbyte(0x02FFFE0E) == 0x45 then
 game = "Black 2"
end

if game ~= "Black" and game ~= "White" then
 warning = " - Wrong game version! Use Black/White instead"
else
 warning = ""
end

print("Game Version: "..game..warning)
print("Language: "..language)
print("")

client.reboot_core()

module("mt19937", package.seeall)

-- Period parameters
local N = 624
local M = 397
local MATRIX_A = 0x9908B0DF  -- constant vector a
local UPPER_MASK = 0x80000000  -- most significant w-r bits
local LOWER_MASK = 0x7FFFFFFF  -- least significant r bits

local mt = {}  -- the array for the state vector
local mti = N + 1  -- mti == N + 1 means mt[N] is not initialized

-- initializes mt[N] with a seed
function randomseed(s)
 s = band(s, 0xFFFFFFFF)
 mt[1] = s
 for i = 1, N - 1 do
  -- s = 1812433253 * (bxor(s, rshift(s, 30))) + i
  s = bxor(s, rshift(s, 30))
  local s_lo = band(s, 0xFFFF)
  local s_hi = rshift(s, 16)
  local s_lo2 = band(1812433253 * s_lo, 0xFFFFFFFF)
  local s_hi2 = band(1812433253 * s_hi, 0xFFFF)
  s = bor(lshift(rshift(s_lo2, 16) + s_hi2, 16), band(s_lo2, 0xFFFF))
  -- s = band(s + i, 0xFFFFFFFF)
  local s_lim = 0x100000000 - s
  -- assumes i < 2^31
  if (s_lim > 0 and s_lim <= i) then
   s = i - s_lim
  else
   s = s + i
  end
  mt[i + 1] = s
  -- See Knuth TAOCP Vol2. 3rd Ed. P.106 for multiplier.
  -- In the previous versions, MSBs of the seed affect
  -- only MSBs of the array mt[].
  -- 2002/01/09 modified by Makoto Matsumoto
 end

 mti = N
end

local mag01 = {0, MATRIX_A}  -- mag01[x] = x * MATRIX_A  for x = 0, 1

-- generates a random number on [0, 0xFFFFFFFF] - interval
function random_int32()
 local y

 if (mti >= N) then  -- generate N words at one time
  local kk

  if (mti == N + 1) then  -- if init_genrand() has not been called,
   mt19937.randomseed(5489)  -- a default initial seed is used
  end

  for kk = 1, N - M do
   y = bor(band(mt[kk], UPPER_MASK), band(mt[kk + 1], LOWER_MASK))
   mt[kk] = bxor(mt[kk + M], rshift(y, 1))
   mt[kk] = bxor(mt[kk], mag01[1 + band(y, 1)])
  end
  for kk = N - M + 1, N - 1 do
   y = bor(band(mt[kk], UPPER_MASK), band(mt[kk + 1], LOWER_MASK))
   mt[kk] = bxor(mt[kk + (M - N)], rshift(y, 1))
   mt[kk] = bxor(mt[kk], mag01[1 + band(y, 1)])
  end
  y = bor(band(mt[N], UPPER_MASK), band(mt[1], LOWER_MASK))
  mt[N] = bxor(mt[M], rshift(y, 1))
  mt[N] = bxor(mt[N], mag01[1 + band(y, 1)])

  mti = 0
 end

 y = mt[mti + 1]
 mti = mti + 1

 return y
end

function buildSeed()  -- Predict C-Gear Seed
 ab = (month * day + minute + second) % 256  -- Build Seed
 cd = hour
 cgd = delay % 65536 + 1
 abcd = ab * 0x100 + cd
 efgh = (year + cgd) % 0x10000
 betaseed = ab * 0x1000000 + cd * 0x10000 + efgh  -- Seed before MAC applied
 cgearseed = betaseed + mac  -- Seed after MAC applied, return this value.

 return cgearseed
end

function getCGearSeed()  -- C-Gear Seed Generation
 strMtSeed = string.format("%08X", mtSeed)  -- Mersenne Twister untempered is in one format while the memory is in another
 ab = (month * day + minute + second) % 256  -- Build Seed
 cd = hour
 cgd = delay % 65536 - 1
 abcd = ab * 0x100 + cd
 efgh = (year + cgd) % 0x10000
 nextseed = ab * 0x1000000 + cd * 0x10000 + efgh
 calculatedCGear = (ab * 0x1000000 + cd * 0x10000 + efgh + mac) % 0x100000000  -- Seed is built
 randomseed(calculatedCGear)
 cgearCheck = string.format("%08X", random_int32())

 if strMtSeed ~= cgearCheck then
  cgd = cgd - 1  -- Subtract 1 from delay to check a different set.
  ab = (month * day + minute + second) % 256  -- Rebuild seed, try again.
  cd = hour
  abcd = ab * 0x100 + cd
  efgh = (year + cgd) % 0x10000
  calculatedCGear = (ab * 0x1000000 + cd * 0x10000 + efgh + mac) % 0x100000000
  randomseed(calculatedCGear)
  cgearCheck = string.format("%08X", random_int32())
 end

 hitMtSeed = calculatedCGear
 hitDelay = cgd
 hitDate = string.format("%02d/%02d/%d\n%02d:%02d:%02d", month, day, 2000 + year, hour, minute, second)
end

function next(s, mul1, mul2, sum)
 local a = mul1 * (s % 65536) + rshift(s, 16) * mul2
 local b = mul2 * (s % 65536) + (a % 65536) * 65536 + sum
 local c = b % 4294967296
 return c
end

function back(s)
 local a = 0x9638 * (s % 65536) + rshift(s, 16) * 0x806D
 local b = 0x806D * (s % 65536) + (a % 65536) * 65536 + 0xA384E6F9
 local c = b % 4294967296
 return c
end

function getBits(a, b, d)
 return rshift(a, b) % lshift(1, d)
end

function getHigh(a)
 return(rshift(a, 16))
end

function printIVs()
 gui.text(lateralPaddingWidth + 1, 45, "IVs:")
 if hpiv >= 30 then
  gui.text(lateralPaddingWidth + 51, 45, string.format("%02d", hpiv), "limegreen")
 elseif hpiv >= 1 and hpiv <= 5 then
  gui.text(lateralPaddingWidth + 51, 45, string.format("%02d", hpiv), "orange")
 elseif hpiv < 1 then
  gui.text(lateralPaddingWidth + 51, 45, string.format("%02d", hpiv), "red")
 else
  gui.text(lateralPaddingWidth + 51, 45, string.format("%02d", hpiv))
 end
 gui.text(lateralPaddingWidth + 71, 45, "/")

 if atkiv >= 30 then
  gui.text(lateralPaddingWidth + 81, 45, string.format("%02d", atkiv), "limegreen")
 elseif atkiv >= 1 and atkiv <= 5 then
  gui.text(lateralPaddingWidth + 81, 45, string.format("%02d", atkiv), "orange")
 elseif atkiv < 1 then
  gui.text(lateralPaddingWidth + 81, 45, string.format("%02d", atkiv), "red")
 else
  gui.text(lateralPaddingWidth + 81, 45, string.format("%02d", atkiv))
 end
 gui.text(lateralPaddingWidth + 101, 45, "/")

 if defiv >= 30 then
  gui.text(lateralPaddingWidth + 111, 45, string.format("%02d", defiv), "limegreen")
 elseif defiv >= 1 and defiv <= 5 then
  gui.text(lateralPaddingWidth + 111, 45, string.format("%02d", defiv), "orange")
 elseif defiv < 1 then
  gui.text(lateralPaddingWidth + 111, 45, string.format("%02d", defiv), "red")
 else
  gui.text(lateralPaddingWidth + 111, 45, string.format("%02d", defiv))
 end
 gui.text(lateralPaddingWidth + 131, 45, "/")

 if spaiv >= 30 then
  gui.text(lateralPaddingWidth + 141, 45, string.format("%02d", spaiv), "limegreen")
 elseif spaiv >= 1 and spaiv <= 5 then
  gui.text(lateralPaddingWidth + 141, 45, string.format("%02d", spaiv), "orange")
 elseif spaiv < 1 then
  gui.text(lateralPaddingWidth + 141, 45, string.format("%02d", spaiv), "red")
 else
  gui.text(lateralPaddingWidth + 141, 45, string.format("%02d", spaiv))
 end
 gui.text(lateralPaddingWidth + 161, 45, "/")

 if spdiv >= 30 then
  gui.text(lateralPaddingWidth + 171, 45, string.format("%02d", spdiv), "limegreen")
 elseif spdiv >= 1 and spdiv <= 5 then
  gui.text(lateralPaddingWidth + 171, 45, string.format("%02d", spdiv), "orange")
 elseif spdiv < 1 then
  gui.text(lateralPaddingWidth + 171, 45, string.format("%02d", spdiv), "red")
 else
  gui.text(lateralPaddingWidth + 171, 45, string.format("%02d", spdiv))
 end
 gui.text(lateralPaddingWidth + 191, 45, "/")

 if speiv >= 30 then
  gui.text(lateralPaddingWidth + 201, 45, string.format("%02d", speiv), "limegreen")
 elseif speiv >= 1 and speiv <= 5 then
  gui.text(lateralPaddingWidth + 201, 45, string.format("%02d", speiv), "orange")
 elseif speiv < 1 then
  gui.text(lateralPaddingWidth + 201, 45, string.format("%02d", speiv), "red")
 else
  gui.text(lateralPaddingWidth + 201, 45, string.format("%02d", speiv))
 end
end

function getPokemonSlot()
 showStats = true
 pos = 0

 if mode[index] == "Pokemon Info" then
  isBoxCheck = mbyte(boxPosAddr + 0x2) == 0xFF and mbyte(boxPosAddr) < 30 and mbyte(boxNumAddr) < 24
  isStatsPartyCheck = mdword(partyCheckAddr) ~= 0

  if location[locationIndex] == "Box" then
   if isBoxCheck then
    pos = mbyte(boxPosAddr)
    showStats = false
   else -- Stats Box Check
    pos = mbyte(statsBoxPosAddr)
   end
  elseif location[locationIndex] == "Party" then
   if isStatsPartyCheck then
    pos = mbyte(statsPartyPosAddr)
   else -- Party Check
    pos = mbyte(partyPosAddr)
   end
  end
 elseif mode[index] == "Capture" then
  pos = currPos
 elseif mode[index] == "Breeding" then
  pos = mbyte(partyCounterAddr) - 1
 end

 return pos
end

function getPidAddr(position)
 if mode[index] == "Capture" then
  return enemyAddr + 0xDC * position
 elseif mode[index] == "C-Gear" then
  return cgearEnemyAddr
 elseif mode[index] == "Pokemon Info" then
  if location[locationIndex] == "Box" then
   if isBoxCheck then
    return boxAddr + (0x88 * position) + (0x10 * mbyte(boxNumAddr)) + (0x88 * mbyte(boxNumAddr) * 0x1E)
   else -- Stats Box Check
    return statsBoxAddr
   end
  elseif location[locationIndex] == "Party" then
    return partyAddr + 0xDC * position
  end
 elseif mode[index] == "Breeding" then
  return partyAddr + 0xDC * position
 end
end

function getPokemonInfo()
 pidAddr = getPidAddr(getPokemonSlot())
 pid = mdword(pidAddr)

 checksum = mword(pidAddr + 6)
 shiftValue = (rshift((band(pid, 0x3E000)), 0xD)) % 24

 BlockAoff = (BlockA[shiftValue + 1] - 1) * 32
 BlockBoff = (BlockB[shiftValue + 1] - 1) * 32
 BlockCoff = (BlockC[shiftValue + 1] - 1) * 32
 BlockDoff = (BlockD[shiftValue + 1] - 1) * 32

 -- Block A
 prng = checksum
 for i = 1, BlockA[shiftValue + 1] - 1 do
  prng = next(prng, 0x5F74, 0x8241, 0xCBA72510) -- 16 cycles
 end

 prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
 pokemonID = bxor(mword(pidAddr + BlockAoff + 8), getHigh(prng)) + 1
 if pokemonID > 650 then
  pokemonID = 1
 end

 prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
 heldItem = bxor(mword(pidAddr + BlockAoff + 2 + 8), getHigh(prng)) + 1
 if heldItem > 639 then
  pokemonID = 1
  heldItem = 1
 end

 prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
 OTID = bxor(mword(pidAddr + BlockAoff + 4 + 8), getHigh(prng))
 prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
 OTSID = bxor(mword(pidAddr + BlockAoff + 6 + 8), getHigh(prng))
 if mode[index] == "Pokemon Info" then
  tid = OTID
  sid = OTSID
 end

 prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
 prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
 prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
 ability = bxor(mword(pidAddr + BlockAoff + 12 + 8), getHigh(prng))
 friendship_or_steps_to_hatch = getBits(ability, 0, 8)
 ability = getBits(ability, 8, 8) + 1
 if ability > 164 then
  pokemonID = 1
  ability = 1
 end

 prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
 prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
 evs[1] = bxor(mword(pidAddr + BlockAoff + 16 + 8), getHigh(prng))
 prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
 evs[2] = bxor(mword(pidAddr + BlockAoff + 18 + 8), getHigh(prng))
 prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
 evs[3] = bxor(mword(pidAddr + BlockAoff + 20 + 8), getHigh(prng))

 hpev =  getBits(evs[1], 0, 8)
 atkev = getBits(evs[1], 8, 8)
 defev = getBits(evs[2], 0, 8)
 speev = getBits(evs[2], 8, 8)
 spaev = getBits(evs[3], 0, 8)
 spdev = getBits(evs[3], 8, 8)

 -- Block B
 prng = checksum
 for i = 1, BlockB[shiftValue + 1] - 1 do
  prng = next(prng, 0x5F74, 0x8241, 0xCBA72510) -- 16 cycles
 end

 prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
 move[1] = bxor(mword(pidAddr + BlockBoff + 8), getHigh(prng)) + 1
 if move[1] > 559 then
  pokemonID = 1
  move[1] = 1
 end
 prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
 move[2] = bxor(mword(pidAddr + BlockBoff + 2 + 8), getHigh(prng)) + 1
 if move[2] > 559 then
  pokemonID = 1
  move[2] = 1
 end
 prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
 move[3] = bxor(mword(pidAddr + BlockBoff + 4 + 8), getHigh(prng)) + 1
 if move[3] > 559 then
  pokemonID = 1
  move[3] = 1
 end
 prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
 move[4] = bxor(mword(pidAddr + BlockBoff + 6 + 8), getHigh(prng)) + 1
 if move[4] > 559 then
  pokemonID = 1
  move[4] = 1
 end

 prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
 moveppaux = bxor(mword(pidAddr + BlockBoff + 8 + 8), getHigh(prng))
 movepp[1] = getBits(moveppaux, 0, 8)
 movepp[2] = getBits(moveppaux, 8, 8)
 prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
 moveppaux = bxor(mword(pidAddr + BlockBoff + 10 + 8), getHigh(prng))
 movepp[3] = getBits(moveppaux, 0, 8)
 movepp[4] = getBits(moveppaux, 8, 8)

 prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
 prng = next(prng, 0x41C6, 0x4E6D, 0x6073)

 prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
 ivspart[1] = bxor(mword(pidAddr + BlockBoff + 16 + 8), getHigh(prng))
 prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
 ivspart[2] = bxor(mword(pidAddr + BlockBoff + 18 + 8), getHigh(prng))
 ivs = ivspart[1]  + lshift(ivspart[2], 16)

 hpiv  = getBits(ivs, 0, 5)
 atkiv = getBits(ivs, 5, 5)
 defiv = getBits(ivs, 10, 5)
 speiv = getBits(ivs, 15, 5)
 spaiv = getBits(ivs, 20, 5)
 spdiv = getBits(ivs, 25, 5)
 isEgg = getBits(ivs, 30, 1) == 1

 prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
 prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
 prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
 nat = bxor(mword(pidAddr + BlockBoff + 24 + 8), getHigh(prng))
 nat = getBits(nat, 8, 8) + 1
 if nat > 25 then
  pokemonID = 1
  nat = 1
 end

 -- Calculate Hidden Power
 hiddentype = floor(((hpiv % 2) + 2*(atkiv % 2) + 4*(defiv % 2) + 8*(speiv % 2) + 16*(spaiv % 2) + 32*(spdiv % 2))*15 / 63)
 hiddenpower = 30 + floor(((rshift(hpiv, 1) % 2) + 2*(rshift(atkiv, 1) % 2) + 4*(rshift(defiv, 1) % 2)
                 + 8*(rshift(speiv, 1) % 2) + 16*(rshift(spaiv, 1) % 2) + 32*(rshift(spdiv, 1) % 2)) * 40 / 63)

 if showStats then
  -- Block D
  prng = checksum
  for i = 1, BlockD[shiftValue + 1] - 1 do
   prng = next(prng, 0x5F74, 0x8241, 0xCBA72510) -- 16 cycles
  end

  prng = next(prng, 0xCFDD, 0xDF21, 0x67DBB608) -- 8 cycles
  prng = next(prng, 0xEE06, 0x7F11, 0x31B0DDE4) -- 4 cycles
  prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
  prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
  pkrs = bxor(mword(pidAddr + BlockDoff + 0x1A + 8), getHigh(prng))
  pkrs = getBits(pkrs, 0, 8)

  prng = pid
  prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
  prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
  prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
  level = getBits(bxor(mword(pidAddr + 0x8C), getHigh(prng)), 0, 8)

  prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
  hpstat = bxor(mword(pidAddr + 0x8E), getHigh(prng))
  prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
  maxhpstat = bxor(mword(pidAddr + 0x90), getHigh(prng))
  prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
  atkstat = bxor(mword(pidAddr + 0x92), getHigh(prng))
  prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
  defstat = bxor(mword(pidAddr + 0x94), getHigh(prng))
  prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
  spestat = bxor(mword(pidAddr + 0x96), getHigh(prng))
  prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
  spastat = bxor(mword(pidAddr + 0x98), getHigh(prng))
  prng = next(prng, 0x41C6, 0x4E6D, 0x6073)
  spdstat = bxor(mword(pidAddr + 0x9A), getHigh(prng))
 end

 if (mode[index] ~= "Breeding" and pokemonID ~= 1) or (mode[index] == "Breeding" and isEgg and pokemonID ~= 1) then
  gui.text(lateralPaddingWidth + 1, 0, "Species: "..pokemon[pokemonID])

  if showStats then
   gui.text(lateralPaddingWidth + 1, 15, "Level: "..level)
   gui.text(lateralPaddingWidth + 1, 30, string.format("Stats: %d/%d/%d/%d/%d/%d", hpstat, atkstat, defstat, spastat, spdstat, spestat))
  end

  printIVs()
  gui.text(lateralPaddingWidth + 251, 45, "HP "..typeOrder[hiddentype + 1].." "..hiddenpower)
  gui.text(lateralPaddingWidth + 1, 60, string.format("EVs: %d/%d/%d/%d/%d/%d", hpev, atkev, defev, spaev, spdev, speev))

  gui.text(lateralPaddingWidth + 1, 75, "PID: ")

  highPid = floor(pid / 65536)
  lowPid = pid % 0x10000
  shinyCheck = bxor(bxor(OTSID, OTID), bxor(lowPid, highPid)) < 8

  if shinyCheck then
   gui.text(lateralPaddingWidth + 51, 75, string.format("%08X", pid), "limegreen")
  else
   gui.text(lateralPaddingWidth + 51, 75, string.format("%08X", pid))
  end

  gui.text(lateralPaddingWidth + 1, 90, "Nature: "..nature[nat])
  gui.text(lateralPaddingWidth + 1, 105, "Ability: "..abilities[ability])
  gui.text(lateralPaddingWidth + 1, 120, "Held Item: "..item[heldItem])
  --[[if isEgg then
   gui.text(lateralPaddingWidth + 1, 523, "Egg Step Cycles: "..friendship_or_steps_to_hatch)
  else
   gui.text(lateralPaddingWidth + 1, 523, "Friendship: "..friendship_or_steps_to_hatch)
  end]]
  gui.text(lateralPaddingWidth + 1, 235, "Move: "..moveName[move[1]])
  gui.text(lateralPaddingWidth + 1, 250, "Move: "..moveName[move[2]])
  gui.text(lateralPaddingWidth + 1, 265, "Move: "..moveName[move[3]])
  gui.text(lateralPaddingWidth + 1, 280, "Move: "..moveName[move[4]])
  gui.text(lateralPaddingWidth + 216, 235, "PP: "..movepp[1])
  gui.text(lateralPaddingWidth + 216, 250, "PP: "..movepp[2])
  gui.text(lateralPaddingWidth + 216, 265, "PP: "..movepp[3])
  gui.text(lateralPaddingWidth + 216, 280, "PP: "..movepp[4])
 end
end

function drawArrowLeft(a, b, c)
 gui.drawLine(a, b + 3, a + 2, b + 5, c)
 gui.drawLine(a, b + 3, a + 2, b + 1, c)
 gui.drawLine(a, b + 3, a + 6, b + 3, c)
end

function drawArrowRight(a, b, c)
 gui.drawLine(a, b + 3, a - 2, b + 5, c)
 gui.drawLine(a, b + 3, a - 2, b + 1, c)
 gui.drawLine(a, b + 3, a - 6, b + 3, c)
end

function calcFrameJump(tempCurr, curr)
 calibrationFrame = 0
 if tempCurr ~= curr then
  tempCurr2 = tempCurr
  while tempCurr ~= curr and tempCurr2 ~= curr do
   tempCurr = next(tempCurr, 0x6C07, 0x8965, 0x269EC3)
   tempCurr2 = back(tempCurr2)
   calibrationFrame = calibrationFrame + 1
   if calibrationFrame > 99999 then
    calibrationFrame = 0
    break
   end
  end
  if tempCurr2 == curr then
   calibrationFrame = (-1) * calibrationFrame
   tempCurrLow = tempCurr2
  else
   tempCurrLow = tempCurr
  end
 end
 userdata.set("temp", tempCurrLow)
 return calibrationFrame
end

function setInitSeed()
 initSeedHigh = userdata.get("seedHigh")
 initSeedLow = userdata.get("seedLow")
 console.clear()
 print("Game Version: "..game..warning)
 print("Language: "..language)
 print("")
 print(string.format("Initial Seed: %08X%08X", initSeedHigh, initSeedLow))
 frame = userdata.get("frame")
 tempCurrLow = userdata.get("temp")
 prevMtSeed = userdata.get("prevMt")
 hitMtSeed = userdata.get("hitMtSeed")
 hitDelay = userdata.get("hitDelay")
 hitDate = userdata.get("hitDate")
end

event.onloadstate(setInitSeed)

while true do
 leftArrowColor = 0xD2D3D4D5
 rightArrowColor = 0xD2D3D4D5
 leftArrowColor2 = 0xD2D3D4D5
 rightArrowColor2 = 0xD2D3D4D5

 midScreenWidth  = client.screenwidth() / 2
 midScreenHeight = (client.screenheight() / 2) - 1
 lateralPaddingWidth = client.borderwidth()

 key = input.get()
 if key["Number1"] then
  leftArrowColor = "orange"
  if not prevKey["Number1"] then
   index = index - 1
   if index < 1 then
    index = 6
   end
  end
 elseif key["Number2"] then
  rightArrowColor = "orange"
  if not prevKey["Number2"] then
   index = index + 1
   if index > 6 then
    index = 1
   end
  end
 end

 if mode[index] == "Capture" then
  if key["Number3"] then
   leftArrowColor2 = "orange"
   if not prevKey["Number3"] then
    currPos = currPos - 1
    if currPos < 0 then
     currPos = 5
    end
   end
  elseif key["Number4"] then
   rightArrowColor2 = "orange"
   if not prevKey["Number4"] then
    currPos = currPos + 1
    if currPos > 5 then
     currPos = 0
    end
   end
  end
 else
  currPos = 0
 end

 if mode[index] == "Pokemon Info" then
  if key["Number5"] then
   leftArrowColor2 = "orange"
   if not prevKey["Number5"] then
    locationIndex = locationIndex - 1
    if locationIndex < 1 then
     locationIndex = 2
    end
   end
  elseif key["Number6"] then
   rightArrowColor2 = "orange"
   if not prevKey["Number6"] then
    locationIndex = locationIndex + 1
    if locationIndex > 2 then
     locationIndex = 1
    end
   end
  end
 else
  locationIndex = 1
 end

 prevKey = key

 if mdword(prngAddr) ~= 0 and initSet == 0 then
  initSeedHigh = mdword(prngAddr + 0x4)
  initSeedLow = mdword(prngAddr)
  print(string.format("Initial Seed: %08X%08X", initSeedHigh, initSeedLow))
  tempCurrLow = initSeedLow
  prevMtSeed = mdword(mtSeedAddr)
  initSet = 1
 elseif mdword(prngAddr) == 0 then
  initSeedHigh = 0
  initSeedLow = 0
  frame = 0
  initSet = 0
  hitMtSeed = 0
  hitDelay = 0
  hitDate = "01/01/2000\n00:00:00"
 end

 userdata.set("seedHigh", initSeedHigh)
 userdata.set("seedLow", initSeedLow)
 userdata.set("prevMt", prevMtSeed)
 currSeedHigh = mdword(prngAddr + 0x4)
 currSeedLow = mdword(prngAddr)
 mtSeed = mdword(mtSeedAddr)

 if mdword(mtSeedAddr + 0x9C0) == 624 then
  ivsFrame = 0
 else
  ivsFrame = mdword(mtSeedAddr + 0x9C0)
 end

 frame = frame + calcFrameJump(tempCurrLow, currSeedLow)
 userdata.set("frame", frame)
 sid = floor(mdword(idsAddr) / 0x10000)
 tid = mdword(idsAddr) % 0x10000

 delay = mdword(0x02FFFC3C)
 timehex = mdword(0x023FFDEC)
 datehex = mdword(0x023FFDE8)
 hour = string.format("%02X", (timehex % 0x100) % 0x40)
 minute = string.format("%02X", (rshift(timehex % 0x10000, 8)))
 second = string.format("%02X", (mbyte(0x02FFFDEE)))
 year = string.format("%02X", (mbyte(0x02FFFDE8)))
 month = string.format("%02X", (mbyte(0x02FFFDE9)))
 day = string.format("%02X", (mbyte(0x02FFFDEA)))

 if prevMtSeed ~= mtSeed and delay > 200 then
  prevMtSeed = mtSeed
  getCGearSeed()
 end

 userdata.set("hitMtSeed", hitMtSeed)
 userdata.set("hitDelay", hitDelay)
 userdata.set("hitDate", hitDate)
 prevMtSeed = mtSeed

 gui.text(lateralPaddingWidth + 1, midScreenHeight, "Mode: "..mode[index])
 drawArrowLeft(102, 192, leftArrowColor)
 gui.text(midScreenWidth - 26, midScreenHeight, "1 - 2")
 drawArrowRight(152, 192, rightArrowColor)

 if mode[index] == "Pokemon Info" then
  gui.text(lateralPaddingWidth + 1, midScreenHeight + 15, "Location: "..location[locationIndex])
  drawArrowLeft(102, 199, leftArrowColor2)
  gui.text(midScreenWidth - 26, midScreenHeight + 15, "5 - 6")
  drawArrowRight(152, 199, rightArrowColor2)
 end

 if mode[index] == "Pokemon Info" or mode[index] == "Capture" or mode[index] == "C-Gear" or mode[index] == "Breeding" then
  getPokemonInfo()

  if mode[index] == "Capture" then
   drawArrowLeft(102, 1, leftArrowColor2)
   gui.text(midScreenWidth - 26, 0, "3 - 4")
   drawArrowRight(152, 1, rightArrowColor2)
  end

  if (mode[index] == "Pokemon Info" and pokemonID ~= 1) or mode[index] == "Capture" then
   gui.text(lateralPaddingWidth + 13, 0, "Slot: "..getPokemonSlot() + 1, nil, "topright")
  end
 end

 if mode[index] ~= "None" and mode[index] ~= "Pokemon Info" then
  gui.text(lateralPaddingWidth + 1, midScreenHeight + 15, string.format("Initial Seed: %08X%08X", initSeedHigh, initSeedLow))
  gui.text(lateralPaddingWidth + 1, midScreenHeight + 30, string.format("Current Seed: %08X%08X", currSeedHigh, currSeedLow))
  gui.text(lateralPaddingWidth + 1, midScreenHeight + 45, string.format("PID Frame: %d", frame))
  gui.text(lateralPaddingWidth + 1, midScreenHeight + 60, string.format("IVs Frame: %d", ivsFrame))
  gui.text(lateralPaddingWidth + 1, midScreenHeight - 29, string.format("%02d/%02d/%d", month, day, 2000 + year), nil, "bottomright")
  gui.text(lateralPaddingWidth + 1, midScreenHeight - 44, string.format("%02d:%02d:%02d", hour, minute, second), nil, "bottomright")

  if mode[index] == "C-Gear" then
   gui.text(lateralPaddingWidth + 1, midScreenHeight + 157, string.format("Next C-Gear: %08X", buildSeed()))
   gui.text(lateralPaddingWidth + 1, midScreenHeight + 172, string.format("Delay: %d", delay))
   gui.text(lateralPaddingWidth + 1, midScreenHeight + 187, string.format("C-Gear Seed: %08X", hitMtSeed))
   gui.text(lateralPaddingWidth + 1, midScreenHeight + 202, string.format("Hit Delay: %d", hitDelay))
   gui.text(lateralPaddingWidth + 1, midScreenHeight + 217, string.format("Hit Date:\n%s", hitDate))
  end
 end

 if mode[index] == "Capture" or (mode[index] == "Pokemon Info" and pokemonID ~= 1) or mode[index] == "Breeding" or mode[index] == "Pandora" then
  gui.text(lateralPaddingWidth + 1, 15, string.format("TID: %05d", tid), nil, "bottomright")
  gui.text(lateralPaddingWidth + 1, 0, string.format("SID: %05d", sid), nil, "bottomright")
 end

 emu.frameadvance()
end