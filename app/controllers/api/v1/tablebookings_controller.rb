module Api
  module V1
    class TablebookingsController < ApplicationController
      rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

      def index
        tablebookings = Tablebooking.tablebooking('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded tablebookings', data:tablebooking},status: :ok
      end

      def show
        tablebooking = Tablebooking.find(params[:id])
        render json: {status: 'SUCCESS', message:'Loaded Tablebooking', data:tablebooking},status: :ok
      end

      def create
        tablebooking = Tablebooking.new(tablebooking_params)
        if tablebooking.save
          render json: {status: 'SUCCESS', message:'Saved Tablebooking', data:tablebooking},status: :ok
        else
          render json: {status: 'ERROR', message:'Tablebooking not saved',
          data:tablebooking.errors},status: :unprocessable_entity
        end
      end

      private

      def tablebooking_params
        params.permit(:tablebooking, :table_id, :guest, :first_name, :last_name, :guestlist_id, :event_title, :table_id, :event_id)
      end
    end
  end
end