class ExercisesController < ApplicationController

  def index
    # After logging in, this is where the User is always redirected.
    # This is a good place to check if any temporary Workouts have been stored.
    # If cookies[:temp_id] exists and it's not a blank string and the user is logged in...
    if cookies[:temp_id].present? && user_signed_in?
      # Get all temporarily saved Workouts for the User.
      workouts = Workout.where(temp_id: cookies[:temp_id])
      # Get rid of temporary identifier.
      cookies.delete :temp_id
      # Ensure all the temporarily saved Workouts for the User and now assigned to the User.
      workouts.each do |workout|
        workout.user_id = current_user.id
        workout.temp_id = nil
        workout.save
      end
      redirect_to workout_path(workouts.last)
    end

    if params[:desired_category].present? && params[:desired_duration].present?
      @exercises = Exercise.timed_set(params[:desired_category], params[:desired_duration])
      @workout = Workout.new
    end
  end
end

