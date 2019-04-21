class TopController < ApplicationController
  def new
    @topics = Topic.all
  end
  def index
    #code
  end

end
