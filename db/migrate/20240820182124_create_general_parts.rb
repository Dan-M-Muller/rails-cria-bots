class CreateGeneralParts < ActiveRecord::Migration[7.1]
  def change
    create_table :general_parts do |t|
      t.string :name
      t.string :stats
      t.string :placement
      t.integer :memory_consumption

      t.timestamps
    end
    add_reference :general_parts, :robots, foreign_key: true
  end
end
