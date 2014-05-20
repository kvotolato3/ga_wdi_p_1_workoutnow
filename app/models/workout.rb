class Workout < ActiveRecord::Base
  has_many :workout_exercises
  has_many :exercises, through: :workout_exercises

  def sum_duration
    self.duration = self.exercises.sum(:seconds_duration)
    self.save
  end
end
