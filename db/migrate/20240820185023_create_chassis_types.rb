class CreateChassisTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :chassis_types do |t|
      t.string :type
      t.integer :aim
      t.integer :batery
      t.integer :damage
      t.integer :durability
      t.integer :shell
      t.integer :speed

      t.timestamps
    end
    add_reference :chassis_types, :robots, foreign_key: true
  end
end
