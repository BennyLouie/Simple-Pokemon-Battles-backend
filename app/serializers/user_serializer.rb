class UserSerializer < ActiveModel::Serializer
  attributes :id, :full_name, :username, :password_digest, :wins, :losses
  has_many :pokemons
end
