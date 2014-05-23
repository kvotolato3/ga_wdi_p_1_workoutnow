class WorkoutsController < ApplicationController
  before_action :authenticate_user!, except: :create

  def index
    @workouts = current_user.workouts
  end

  def create
    @exercises = params[:workout]["exercise_ids"].split(',')
    @workout = Workout.new
    @exercises.each do |exercise|
      @workout.exercises << Exercise.find(exercise.to_i)
    end

    # We have two options here:
    # 1) The User is logged in, in which case we can assign the Workout to the User.
    # 2) The User is not logged in, in which case we need to generate a unique ID and assign it to the Workout.
    if user_signed_in?
      @workout.user_id = current_user.id
      @workout.save
      @workout.sum_duration
      flash[:notice] = 'Workout has been successfully saved!'
      redirect_to workout_path(@workout)
    else
      # Found the 'uuidtools' gem for generating a unique ID.
      # If the cookie exists, use that cookie.
      # If it does not exist, generate one.
      # Enjoy your cookies with milk!
      if cookies[:temp_id].present?
        temp_id = cookies[:temp_id]
      else
        temp_id = UUIDTools::UUID.timestamp_create.to_s
        cookies[:temp_id] = temp_id
      end
      @workout.temp_id = temp_id
      @workout.save
      @workout.sum_duration
      redirect_to new_user_session_path
    end
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
    workout.destroy
    redirect_to workouts_path
  end

private
  def workout_params
    params.require(:workout).permit(:name)
  end
end
