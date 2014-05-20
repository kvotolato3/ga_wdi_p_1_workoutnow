class WorkoutsController < ApplicationController
  before_action :authenticate_user!
  def index
    @workouts = Workout.where(user_id: current_user)
  end

  def create
    @workout = Workout.new(user_id: current_user.id)
    @workout.save
    @exercises = params[:workout]["exercise_ids"].split(',')
    @exercises.each do |exercise|
      @workout.exercises << Exercise.find(exercise.to_i)
    end
    flash[:notice] = 'Workout has been successfully saved!'
    redirect_to workout_path(@workout)
  end

  def show
    @exercises = Workout.find(params[:id]).exercises
  end
end
