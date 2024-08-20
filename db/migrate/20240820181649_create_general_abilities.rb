class CreateGeneralAbilities < ActiveRecord::Migration[7.1]
  def change
    create_table :general_abilities do |t|
      t.string :name
      t.string :effects
      t.integer :batery_consumption

      t.timestamps
    end
    add_reference :general_abilities, :robots, foreign_key: true
  end
end
