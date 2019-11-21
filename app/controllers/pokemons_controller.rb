class PokemonsController < ApplicationController
    
    def index
        allPokemon = Pokemon.all
        render json: allPokemon
    end

    def show
        render json: set_pokemon
    end

    def create
        pokemon = Pokemon.create(pokemon_params)
        if pokemon.valid?
            render json: pokemon
        else
            render json: { errors: pokemon.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def update
        set_pokemon.update(pokemon_params)
        if set_pokemon.valid?
            render json: set_pokemon
        else
            render json: { errors: set_pokemon.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
        set_pokemon.destroy
        render json: set_pokemon
    end


    private
    
    def set_pokemon
        Pokemon.find_by(id: params[:id])
    end

    def pokemon_params
        params.permit(:name, :front_img, :back_img, :lv, :exp, :hp, :atk, :def, :spd, :stat_pts)
    end
end
