Pokemon.destroy_all
Pokemon.reset_pk_sequence
User.destroy_all
User.reset_pk_sequence
Capture.reset_pk_sequence

"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/#{num}.png"

"https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/#{num}.png"

pokemonArr = [
    "Bulbasaur", "Ivysaur", "Venasaur", "Charmander", "Charmeleon", "Charizard", "Squirtle", "Wartortle", "Blastoise", 
    "Caterpie", "Metapod", "Butterfree", "Weedle", "Kakuna", "Beedrill", "Pidgey", "Pidgeotto", "Pidgeot", "Rattata", "Raticate", 
    "Spearow", "Fearow", "Ekans", "Arbok", "Pikachu", "Raichu", "Sandshrew", "Sandslash", "Nidoran ♀", "Nidorina", "Nidoqueen", 
    "Nidoran ♂", "Nidorino", "Nidoking", "Clefairy", "Clefable", "Vulpix", "Ninetales", "Jigglypuff", "Wigglytuff", 
    "Zubat", "Golbat", "Oddish", "Gloom", "Vileplume", "Paras", "Parasect", "Venonat", "Venomoth", "Diglett", "Dugtrio", 
    "Meowth", "Persian", "Psyduck", "Golduck", "Mankey", "Primeape", "Growlithe", "Arcanine", "Poliwag", "Poliwhirl", "Poliwrath", 
    "Abra", "Kadabra", "Alakazam", "Machop", "Machoke", "Machamp", "Bellsprout", "Weepinbell", "Victreebell", "Tentacool", "Tentacruel", 
    "Geodude", "Graveler", "Golem", "Ponyta", "Rapidash", "Slowpoke", "Slowbro", "Magnemite", "Magneton", "Farfetch\'d", "Doduo", "Dodrio", 
    "Seel", "Dewgong", "Grimer", "Muk", "Shellder", "Cloyster", "Ghastly", "Haunter", "Gengar", "Onix", "Drowzee", "Hypno", "Krabby", "Kingler", 
    "Voltorb", "Electrode", "Exeggcute", "Exeggutor", "Cubone", "Marowak", "Hitmonlee", "Lickitung", "Koffing", "Weezing", "Rhyhorn", "Rhydon", 
    "Chansey", "Tangela", "Kangaskhan", "Horsea", "Seadra", "Goldeen", "Seaking", "Staryu", "Starmie", "Mr. Mime", "Scyther", "Jynx", "Electabuzz", 
    "Magmar", "Pinsir", "Tauros", "Magikarp", "Gyarados", "Lapras", "Ditto", "Eevee", "Vaporeon", "Jolteon", "Flareon", "Porygon", "Omanyte", "Omastar", 
    "Kabuto", "Kabutops", "Aerodactyl", "Snorlax", "Articuno", "Zapdos", "Moltres", "Dratini", "Dragonair", "Dragonite", "Mewtwo", "Mew"
]


