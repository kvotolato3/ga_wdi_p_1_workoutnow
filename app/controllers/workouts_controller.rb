class WorkoutsController < ApplicationController
  def create
    authenticate_user!
    @workout = Workout.new(user_id: current_user)
    @workout.save
    @exercises = params[:workout]["exercise_ids"].split(',')
    @exercises.each do |exercise|
      @workout.exercises << Exercise.find(exercise.to_i)
    end
    flash[:notice] = 'Workout has been successfully saved!'
    redirect_to :back
  end
end
