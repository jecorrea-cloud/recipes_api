class UsersController < ApplicationController
    before_action :authorized, only: [:profile]

    def profile
        wristband = encode_token({user_id: @user.id})
        render json: {user: UserSerializer.new(@user), token: wristband}
    end
    
    #Creates a new user
    def create
        user = User.create(user_params)
        if user.valid?
            wristband = encode_token({user_id: user.id})
            render json: {user: UserSerializer.new(user), token: wristband}
        else
            render json: {errors: user.errors.full_messages}
        end
    end

    #Handles the login with the data from the frontend
    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
            wristband = encode_token({user_id: user.id})
            render json: {user: UserSerializer.new(user), token: wristband}
        else
            render json: {error: "Invalid username and/or password"}
        end
    end


    private

    def user_params
        params.permit(:username, :password)
    end
end
