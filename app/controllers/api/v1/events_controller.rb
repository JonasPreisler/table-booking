module Api
  module V1
    class EventsController < ApplicationController
      
      def index
        events = Event.event('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded events', data:events},status: :ok
      end

      def show
        event = Event.find(params[:id])
        render json: {status: 'SUCCESS', message:'Loaded event', data:event},status: :ok
        guests = Guest.all
      end

      def create
        event = Event.new(order_params)

        if event.save
          render json: {status: 'SUCCESS', message:'Saved event', data:event},status: :ok
        else
          render json: {status: 'ERROR', message:'Event not saved',
          data:event.errors},status: :unprocessable_entity
        end
      end

      private

      def order_params
        params.permit(:event, :guest, :first_name, :last_name, :gender, :date, :title, :guestlist)
      end

    end
  end
end