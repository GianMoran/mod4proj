class UsersController < ApplicationController
    before_action :find_current_user

    def create
      user = User.create(user_params)
      render json: user
    end
    
    def index
        render json: User.all
    end
    
    def show
        render json: current_user, include: [ :workouts ]
    end
    
    def update
        current_user.update(user_params)
        render json: current_user
    end
    
    def destroy
        current_user.destroy
        render json: current_user
    end
    
    private

    def find_current_user
        if params[:id]
            @current_user =User.find(params[:id])
        else
            @current_user= User.new
        end
    end
    def user_params
        params.permit(:name, :age, :password)
    end
   def current_user
     @current_user
   end
   
end