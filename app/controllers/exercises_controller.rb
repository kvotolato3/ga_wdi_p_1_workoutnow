class ExercisesController < ApplicationController
  def index
    if params[:desired_category].present?
      @exercises = Exercise.where(category: params[:desired_category])
    end
  end
end

