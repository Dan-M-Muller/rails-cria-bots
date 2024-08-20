class CreateRobots < ActiveRecord::Migration[7.1]
  def change
    create_table :robots do |t|
      t.string :name
      t.integer :memory

      t.timestamps
    end
    add_reference :robots, :medal_colections, foreign_key: true
    add_reference :robots, :trainers, foreign_key: true
  end
end
