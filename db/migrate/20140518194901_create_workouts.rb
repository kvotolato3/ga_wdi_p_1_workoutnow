class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :name, default: "Untitled Workout"
      t.integer :duration, default: 0
      t.references :user

      t.timestamps
    end
  end
end
