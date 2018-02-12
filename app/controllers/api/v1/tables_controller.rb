module Api
  module V1
    class TablesController < ApplicationController
      rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

      def index
        tables = Table.table('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded tables', data:table},status: :ok
      end

      def show
        table = Table.find(params[:id])
        render json: {status: 'SUCCESS', message:'Loaded Table', data:table},status: :ok
      end

      def create
        table = Table.new(table_params)
        if table.save
          render json: {status: 'SUCCESS', message:'Saved Table', data:table},status: :ok
        else
          render json: {status: 'ERROR', message:'Table not saved',
          data:table.errors},status: :unprocessable_entity
        end
      end

      private

      def table_params
        params.permit(:number, :table_number, :guest, :first_name, :last_name, :guestlist_id, :event_title)
      end
    end
  end
end