User.destroy_all
Pokemon.destroy_all
Capture.destroy_all

User.reset_pk_sequence
Pokemon.reset_pk_sequence
Capture.reset_pk_sequence

pokemonArr = ["Bulbasaur", "Ivysaur", "Venasaur", "Charmander", "Charmeleon", "Charizard", "Squirtle", "Wartortle", "Blastoise", "Caterpie", "Metapod", "Butterfree", "Weedle", "Kakuna", "Beedrill", "Pidgey", "Pidgeotto", "Pidgeot", "Rattata", "Raticate", "Spearow", "Fearow", "Ekans", "Arbok", "Pikachu", "Raichu", "Sandshrew", "Sandslash", "Nidoran ♀", "Nidorina", "Nidoqueen", "Nidoran ♂", "Nidorino", "Nidoking", "Clefairy", "Clefable", "Vulpix", "Ninetales", "Jigglypuff", "Wigglytuff", "Zubat", "Golbat", "Oddish", "Gloom", "Vileplume", "Paras", "Parasect", "Venonat", "Venomoth", "Diglett", "Dugtrio", "Meowth", "Persian", "Psyduck", "Golduck", "Mankey", "Primeape", "Growlithe", "Arcanine", "Poliwag", "Poliwhirl", "Poliwrath", "Abra", "Kadabra", "Alakazam", "Machop", "Machoke", "Machamp", "Bellsprout", "Weepinbell", "Victreebell", "Tentacool", "Tentacruel", "Geodude", "Graveler", "Golem", "Ponyta", "Rapidash", "Slowpoke", "Slowbro", "Magnemite", "Magneton", "Farfetch\'d", "Doduo", "Dodrio", "Seel", "Dewgong", "Grimer", "Muk", "Shellder", "Cloyster", "Ghastly", "Haunter", "Gengar", "Onix", "Drowzee", "Hypno", "Krabby", "Kingler", "Voltorb", "Electrode", "Exeggcute", "Exeggutor", "Cubone", "Marowak", "Hitmonlee", "Hitmonchan", "Lickitung", "Koffing", "Weezing", "Rhyhorn", "Rhydon", "Chansey", "Tangela", "Kangaskhan", "Horsea", "Seadra", "Goldeen", "Seaking", "Staryu", "Starmie", "Mr. Mime", "Scyther", "Jynx", "Electabuzz", "Magmar", "Pinsir", "Tauros", "Magikarp", "Gyarados", "Lapras", "Ditto", "Eevee", "Vaporeon", "Jolteon", "Flareon", "Porygon", "Omanyte", "Omastar", "Kabuto", "Kabutops", "Aerodactyl", "Snorlax", "Articuno", "Zapdos", "Moltres", "Dratini", "Dragonair", "Dragonite", "Mewtwo", "Mew"]

i = 1
while i <= 151 do 
    Pokemon.create( name: pokemonArr[i - 1], front_img: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/#{i}.png", back_img: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/#{i}.png", lv: 1, exp: 0, hp: rand(5) + 5, atk: rand(5) + 1, def: rand(5) + 1, spd: rand(5) + 1, stat_pts: 0 )
    i += 1
end

a = 1
while a <= 151 do
    Pokemon.create( name: pokemonArr[a - 1], front_img: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/#{a}.png", back_img: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/#{a}.png", lv: 5, exp: 0, hp: rand(5) + 5, atk: rand(5) + 5, def: rand(5) + 5, spd: rand(5) + 5, stat_pts: 0 )
    a += 1
end

b = 1
while b <= 151 do
    Pokemon.create( name: pokemonArr[b - 1], front_img: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/#{b}.png", back_img: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/#{b}.png", lv: 10, exp: 0, hp: rand(5) + 7, atk: rand(5) + 7, def: rand(5) + 7, spd: rand(5) + 7, stat_pts: 0 )
    b += 1
end

c =1
while c <= 151 do
    Pokemon.create( name: pokemonArr[c - 1], front_img: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/#{c}.png", back_img: "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/#{c}.png", lv: 15, exp: 0, hp: rand(5) + 10, atk: rand(5) + 10, def: rand(5) + 10, spd: rand(5) + 10, stat_pts: 0 )
    c += 1
end

benben = User.create( first_name: "Benny", last_name: "Louie", username: "benben", password: "benben", wins: 0, losses: 0 )
dandan = User.create( first_name: "Dan", last_name: "Romano", username: "dandan", password: "dandan", wins: 0, losses: 0 )
phantom = User.create( first_name: "Kelvin", last_name: "Louie", username: "phantom", password: "phantom", wins: 0, losses: 0 )
another = User.create( first_name: "Kenneth", last_name: "Louie", username: "another", password: "another", wins: 0, losses: 0 )

User.all.each do |user|
    num = rand(6) + 1
    num.times do |n|
        Capture.create(pokemon_id: rand(151) + 1, user: user)
    end
end

puts "It has been seeded!!! 🍀"