module Api
  module V1
    class GirlsController < ApplicationController

      def index
        girls = Girl.girl('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded guests', data:girls},status: :ok
      end

      def show
        girl = Girl.find(params[:id])
        render json: {status: 'SUCCESS', message:'Loaded guest', data:girls},status: :ok
      end

      def create
        girl = Girl.new(girl_params)

        if girl.save
          render json: {status: 'SUCCESS', message:'Saved girl', data:girl},status: :ok
        else
          render json: {status: 'ERROR', message:'Girl not saved',
          data:guest.errors},status: :unprocessable_entity
        end
      end

      private

      def girl_params
        params.permit(:girl, :name, :girl_name, :guestlist_id, :first_name, :last_name, :gender, :event_id, :guestlist, :ambassador_id, :event_id)
      end

    end
  end
end