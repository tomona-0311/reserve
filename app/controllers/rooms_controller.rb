class RoomsController < ApplicationController
  def index
  end

  def new
    @room=Room.new
  end
  def create
    @room = Room.new(params.require(:post).permit(:content, :user_id,:name, :address,:price, :image ))
    if @room.save
      flash[:notice] = "新規投稿をしました"
      redirect_to :rooms_show
    else
      @room = Room.find_by(params[:room][:user_id])
      render "rooms/new"
    end

    def show
    end
    def account
    end
    def profile
    end

  end
end
