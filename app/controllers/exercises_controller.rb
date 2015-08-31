class ExercisesController < ApplicationController

  def create
    @workout = Workout.find(params[:workout_id])
    @exercise = @workout.exercise.create(params.require(:exercise).permit(:name, :sets, :reps))

    redirect_to workout_path(@workout), notice: "New exercise added!"
  end

end