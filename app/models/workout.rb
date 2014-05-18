class Workout < ActiveRecord::Base
  has_many :workout_exercises
  has_many :exercises, through: :workout_exercises
end
