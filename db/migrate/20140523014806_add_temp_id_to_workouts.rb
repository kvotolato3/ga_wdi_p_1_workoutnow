class AddTempIdToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :temp_id, :string
  end
end
