class CreateSpecAbilities < ActiveRecord::Migration[7.1]
  def change
    create_table :spec_abilities do |t|
      t.string :name
      t.string :effects
      t.integer :batery_consumption

      t.timestamps
    end
    add_reference :spec_abilities, :medals, foreign_key: true

  end
end
