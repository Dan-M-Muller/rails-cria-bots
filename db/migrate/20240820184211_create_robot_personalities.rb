class CreateRobotPersonalities < ActiveRecord::Migration[7.1]
  def change
    create_table :robot_personalities do |t|
      t.string :name
      t.string :atr_negative_name
      t.integer :atr_negative
      t.string :atr_positive_name
      t.integer :atr_positive

      t.timestamps
    end
  end
end
