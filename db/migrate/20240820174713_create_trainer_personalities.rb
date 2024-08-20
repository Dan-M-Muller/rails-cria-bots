class CreateTrainerPersonalities < ActiveRecord::Migration[7.1]
  def change
    create_table :trainer_personalities do |t|
      t.string :style
      t.string :effects

      t.timestamps
    end
    add_reference :trainer_personalities, :trainer, foreign_key: true
  end
end
