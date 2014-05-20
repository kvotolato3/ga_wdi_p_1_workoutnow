class ExercisesController < ApplicationController

  def index
    if params[:desired_category].present? && params[:desired_duration].present?
      @exercises = Exercise.timed_set(params[:desired_category], params[:desired_duration])
      @workout = Workout.new
    end
  end
end

