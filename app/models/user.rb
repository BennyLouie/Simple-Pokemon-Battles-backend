class User < ApplicationRecord
    has_many :captures
    has_many :pokemons, through: :captures
end
