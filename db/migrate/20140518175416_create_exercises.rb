class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :seconds_duration
      t.integer :repetitions
      t.string :description
      t.string :equipment
      t.string :difficulty
      t.string :photo_url

      t.timestamps
    end
  end
end
