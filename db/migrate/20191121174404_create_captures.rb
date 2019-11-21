class CreateCaptures < ActiveRecord::Migration[6.0]
  def change
    create_table :captures do |t|
      t.references :user, null: false, foreign_key: true
      t.references :pokemon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
