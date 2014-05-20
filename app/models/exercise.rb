class Exercise < ActiveRecord::Base
  has_many :workout_exercises

  def self.timed_set(category, min_time)
    exercises = []
    exercises << Exercise.where(category: category).sample
      while exercises.sum(&:seconds_duration) < (min_time.to_i * 60)
        exercises << Exercise.where(category: category).sample
      end
    exercises
  end

  def minutes
    seconds_duration/60
  end

  def seconds
    seconds_duration % 60
  end

end
