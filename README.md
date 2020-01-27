# This repository works as the backend for the following React Project:
https://github.com/BennyLouie/simple-pokemon-battles

## You may want to fork and clone from that repository beforehand.

## To start off...
    -Fork and clone from this repository
    -Bundle install the gems from the Gemfile
    -Run rails db:seed to pre-load some seed data
    -Run rails s to start up the server (defaults at Port 3000)

### A Brief Summary

This repository works as a backend for the React app linked above.

Stored in this repository is the user information, Pokemon data, and a database of the join models that connects a user to a Pokemon.

# Routes:

/users
/users/#{number}

/pokemons
/pokemons/#{number}

/captures
/captures/#{number}

Note: I am currently missing in my UserController's `show` method an if statement that checks if the user_id acquired from the token matches the user id in the database.
