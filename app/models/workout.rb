class Workout < ActiveRecord::Base
  has_many :workout_exercises, dependent: :destroy
  has_many :exercises, through: :workout_exercises
  belongs_to :user

  def sum_duration
    self.duration = self.exercises.sum(:seconds_duration)/60
    self.save
  end
end
