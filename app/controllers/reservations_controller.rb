class ReservationsController < ApplicationController
    def create
        @air = Air.find(params[:room_id])
        @reservation = @air.reservations.create(reservation_params)
        redirect_to air_path(@air)
    end

private
    def reservation_params
      params.require(:reservation).permit(:check_in, :check_out, :price, :total_price)
    end

end
