class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :name, :front_img, :back_img, :lv, :exp, :exp_max, :hp, :atk, :def, :spd, :stat_pts
end
