class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = current_user.topics.new(topic_params)



    if @topic.save
      redirect_to topics_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
  end
end


   def show
     @topics = Topic.find(Favorite.group(:topic_id).order('count(topic_id) desc').limit(3).pluck(:topic_id))
     #code
   end

   def hashtag
     @user = current_user
     hash_name = params[:name]
     @topics = Topic.where('description LIKE ?', "%##{hash_name}%")
   end
private
 def topic_params
   params.require(:topic).permit(:image, :description)
 end
end
