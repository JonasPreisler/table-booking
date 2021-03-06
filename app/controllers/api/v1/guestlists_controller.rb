module Api
  module V1
    class GuestlistsController < ApplicationController

      def index
        guestlists = Guestlist.guestlist('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded guestlist', data:guestlists},status: :ok
      end

      def show
        guestlist = Guestlist.find(params[:id])
        render json: {status: 'SUCCESS', message:'Loaded guestlist', data:guestlist},status: :ok
        @guests = @guestlist.guests
      end

      def create
        guestlist = Guestlist.new(guestlist_params)

        if guestlist.save
          render json: {status: 'SUCCESS', message:'Saved guestlist', data:guestlist},status: :ok
        else
          render json: {status: 'ERROR', message:'Guest not saved',
          data:guestlist.errors.full_messages},status: :unprocessable_entity
        end
      end

      private

      def guestlist_params
        params.permit(:guestlist_id, :guestlist, :first_name, :last_name, :gender, :event_id, :title, :guest_id, :guest, :ambassador, :ambassador_name, :ambassador_id)
      end

    end
  end
end