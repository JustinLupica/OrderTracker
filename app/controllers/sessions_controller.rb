class SessionsController < ApplicationController
    # before_action :current_user

    def new
    end

    def create
        @user = User.find_by(username: params[:user][:username])
        if @user && @user.authenticate(params[:user][:password])
            session[:user_id] = @user.id
            session[:username] = @user.username
            redirect_to customers_path
        else
            @errors = @user.errors.full_messages
            render :new
        end
    end

    def create_with_facebook
        user = User.find_or_create_by(username: auth['email']) do |u|
            u.password = 'password'
        end
        user.save
        session[:user_id] = user.id
        session[:username] = user.username
        redirect_to customers_path
    end

    def destroy
        session.clear
        redirect_to '/'
    end

    private
    def auth
        request.env['omniauth.auth']['info']
    end
end