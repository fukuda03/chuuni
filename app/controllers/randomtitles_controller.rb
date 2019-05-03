class RandomtitlesController < ApplicationController
  def new
    @random = Randomtitle.new
  end

  def create
    @random = Randomtitle.new(randomtitle_params)
    if @random.save
      redirect_to root_path, success: "投稿成功"
    else
      flash.now[:danger] = "投稿失敗"
      render :new
    end
  end

  def show
    @randoms = Randomtitle.offset(rand(Randomtitle.count)).first(1)
    #code
  end



  private
  def randomtitle_params
    params.require(:randomtitle).permit(:title)
    #code
  end

end
