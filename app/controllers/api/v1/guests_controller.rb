module Api
  module V1
    class GuestsController < ApplicationController

      def index
        guests = Guest.guest('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded guests', data:guests},status: :ok
      end

      def show
        guest = Guest.find(params[:id])
        render json: {status: 'SUCCESS', message:'Loaded guest', data:guest},status: :ok
      end

      def create
        guest = Guest.new(guest_params)

        if guest.save
          render json: {status: 'SUCCESS', message:'Saved guest', data:guest},status: :ok
        else
          render json: {status: 'ERROR', message:'Guest not saved',
          data:guest.errors},status: :unprocessable_entity
        end
      end

      private

      def guest_params
        params.permit(:guest, :guestlist_id, :first_name, :last_name, :gender, :event_id, :guestlist, :ambassador_id, :event_id, :girl_name, :girl_id, :girl)
      end

    end
  end
end