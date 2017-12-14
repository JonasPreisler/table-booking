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
        @guestlists = @event.guestlists
      end

      def create
        event = Event.new(event_params)

        if event.save
          render json: {status: 'SUCCESS', message:'Saved event', data:event},status: :ok
        else
          render json: {status: 'ERROR', message:'Event not saved',
          data:event.errors},status: :unprocessable_entity
        end
      end

      private

      def event_params
        params.permit(:guest, :first_name, :last_name, :gender, :title, :date, :guestlist_id, :guest_id)
      end

    end
  end
end