class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :front_img
      t.string :back_img
      t.integer :lv
      t.integer :exp
      t.integer :exp_max
      t.integer :hp
      t.integer :atk
      t.integer :def
      t.integer :spd
      t.integer :stat_pts

      t.timestamps
    end
  end
end
