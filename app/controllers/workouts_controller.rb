class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update, :destroy]

  def index
    @workouts = Workout.all.order('created_at DESC')
  end

  def new
    @workout = Workout.new
  end

  def create
    @workout = Workout.new(workout_params)

    if @workout.save
      redirect_to @workout, notice: "New workout created!"
    else
      render 'new'
    end
  end

  def show
    
  end

  def edit
    
  end

  def update
    @workout.update(workout_params)

    if @workout.save
      redirect_to @workout, notice: "Workout was successfully updated!"
    else
      render 'edit'
    end
  end

  def destroy
    @workout.destroy

    redirect_to root_path, notice: "Workout was deleted!"
  end


  private

  def set_workout
    @workout = Workout.find(params[:id])
  end

  def workout_params
    params.require(:workout).permit(:workout, :mood, :date, :length)
  end
end
