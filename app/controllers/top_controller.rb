class TopController < ApplicationController
  def new
    @topics = Topic.all.order(created_at: :desc)
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
