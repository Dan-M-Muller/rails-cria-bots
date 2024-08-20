class CreateMedalColections < ActiveRecord::Migration[7.1]
  def change
    create_table :medal_colections do |t|
      t.string :owner

      t.timestamps
    end
  end
end
