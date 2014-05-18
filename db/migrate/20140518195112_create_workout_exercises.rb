class CreateWorkoutExercises < ActiveRecord::Migration
  def change
    create_table :workout_exercises do |t|
      t.references :workout, index: true
      t.references :exercise, index: true

      t.timestamps
    end
  end
end
