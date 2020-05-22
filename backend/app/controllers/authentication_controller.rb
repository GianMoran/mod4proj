class AuthenticationController < ApplicationController
   def login
    user = User.find_by({ name: params[:name]})
    if(user && user.authenticate(params[:password]))
        token = JWT.encode( { id: user.id }, 'password', 'pass')
        render json: { success: true, id: user.id, token: token }
    else
        render json: { success: false, id: nil }
    end
   end
     
end