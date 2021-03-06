class AuthenticationController < ApplicationController

  def login
    @user = User.find_by({ username: params[:username]})

    if !@user
      render json: { error: "Invalid Login"}, status: :unauthorized
    else
      if !@user.authenticate(params[:password])
        render json: { error: "Invalid Login"}, status: :unauthorized
      else
        payload = {
          iat: Time.now.to_i,
          user_id: @user_id
        }
        secret = Rails.application.secret_key_base
        token = JWT.encode( payload, secret )
        render json: { token: token, user: @user.id, username:@user.username }, status: :created
      end
    end
  end

end
