class SessionsController < ApplicationController

skip_before_action :require_user

  def create
    # params["email"] => the email address
    # params["password"] => the password
    # Do authentication
    # Redirect to the root_path
    # Display a notice that login was either successful or unsuccessful

    user = User.find_by(email: params["email"])
    if user && user.authenticate(params["password"])
      session["user_id"] = user.id
      redirect_to user_path(current_user), notice: "Login successful"
    else
      redirect_to login_path, alert: "Login unsuccessful"
    end

  end

  def destroy
    # Do sign-out
    session["user_id"] = nil
    redirect_to root_path, notice: "See ya later!"
  end

end