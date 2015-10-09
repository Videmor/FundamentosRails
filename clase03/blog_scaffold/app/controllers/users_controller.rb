class UsersController < ApplicationController

  def index
    @users = User.has_user_type.actives
  end

end
