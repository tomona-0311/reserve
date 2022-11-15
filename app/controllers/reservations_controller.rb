class ReservationsController < ApplicationController
  def index
  end

  def new
  end

  def create
    @reservation = Reservation.new(params.require(:reservation).permit(:content, :user_id))
    if @reservation.save
      flash[:notice] = "新規投稿をしました"
      redirect_to :rooms_show
    else
      @reservation = Rooms.find_by(params[:reservation][:user_id])
      render "rooms/new"
    end
  end

  def show
    @reservation = reservation.find(params[:id])
  end


end
