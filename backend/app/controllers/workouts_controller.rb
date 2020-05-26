class WorkoutsController < ApplicationController
    before_action :find_current_workout

    def create
      workout = Workout.create(workout_params)
      render json: workout
    end
    
    def index
        render json: Workout.all
    end
    
    def show
        render json: current_workout
    end
    
    def update
        current_workout.update(workout_params)
        render json: current_workout
    end
    
    def destroy
        current_workout.destroy
        render json: current_workout
    end
    
    private

    def find_current_workout
        if params[:id]
            @current_workout =Workout.find(params[:id])
        else
            @current_workout= Workout.new
        end
    end
    def workout_params
        params.permit(:name, :reps, :sets, :user_id)
    end
    def current_workout
        @current_workout
    end

end