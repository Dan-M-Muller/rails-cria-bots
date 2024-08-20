class CreateSpecParts < ActiveRecord::Migration[7.1]
  def change
    create_table :spec_parts do |t|
      t.string :name
      t.string :stats
      t.string :placement
      t.integer :memory_consuption

      t.timestamps
    end
    add_reference :spec_parts, :chassis_types, foreign_key: true
  end
end
