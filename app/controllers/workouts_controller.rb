class WorkoutsController < ApplicationController
  before_action :authenticate_user!

  def index
    @workouts = current_user.workouts
  end

  def create
    @workout = Workout.new(user_id: current_user.id)
    @exercises = params[:workout]["exercise_ids"].split(',')
    @exercises.each do |exercise|
      @workout.exercises << Exercise.find(exercise.to_i)
    end
    @workout.save
    @workout.sum_duration
    flash[:notice] = 'Workout has been successfully saved!'
    redirect_to workout_path(@workout)
  end

  def show
    @workout = Workout.find(params[:id])
    @exercises = @workout.exercises
  end

  def edit
    @workout = Workout.find(params[:id])
    @exercises = @workout.exercises
  end

  def update
    @workout = Workout.find(params[:id])
    if @workout.update(workout_params)
      redirect_to workout_path(@workout)
    else
      render :edit
    end
  end

  def destroy
    workout = Workout.find(params[:id])
    binding.pry
    workout.destroy
    redirect_to workouts_path
  end

private
  def workout_params
    params.require(:workout).permit(:name)
  end
end
