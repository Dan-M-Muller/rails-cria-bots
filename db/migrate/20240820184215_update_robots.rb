class UpdateRobots < ActiveRecord::Migration[7.1]
  def change
    add_reference :robots, :robot_personalities, foreign_key: true
  end
end
