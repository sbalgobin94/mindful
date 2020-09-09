class AddStatusToGoals < ActiveRecord::Migration[6.0]
  def change
    add_column :goals, :goal_status, :boolean, :default => false
  end
end
