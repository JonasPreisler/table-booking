module Api
  module V1
    class OrdersController < ApplicationController
      
      def index
        orders = Order.order('created_at DESC');
        render json: {status: 'SUCCESS', message:'Loaded orders', data:orders},status: :ok
      end

      def show
        order = Order.find(params[:id])
        render json: {status: 'SUCCESS', message:'Loaded order', data:order},status: :ok
      end

      def create
        order = Order.new(order_params)

        if order.save
          render json: {status: 'SUCCESS', message:'Saved order', data:order},status: :ok
        else
          render json: {status: 'ERROR', message:'Order not saved',
          data:order.errors},status: :unprocessable_entity
        end
      end

      private

      def order_params
        params.permit(:delivery_date, :order_amount, :order_paid, :order_status, :order_details, :address, :zip, :city)
      end

    end
  end
end