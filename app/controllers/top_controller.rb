class TopController < ApplicationController
  def new
    @topics = Topic.all
  end


end
