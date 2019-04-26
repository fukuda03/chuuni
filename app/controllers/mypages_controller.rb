class MypagesController < ApplicationController
  def index
    @users = User.all
  end
end
