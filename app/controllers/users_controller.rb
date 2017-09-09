class UsersController < ApplicationController
  before_action :get_user
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  private
    def get_user
      @user = current_user
    end
end
