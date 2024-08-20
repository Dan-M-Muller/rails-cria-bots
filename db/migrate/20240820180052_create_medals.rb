class CreateMedals < ActiveRecord::Migration[7.1]
  def change
    create_table :medals do |t|
      t.string :type

      t.timestamps
    end
    add_reference :medals, :medal_colections, foreign_key: true
  end
end
