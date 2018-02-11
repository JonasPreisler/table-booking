class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  skip_before_filter :verify_authenticity_token
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found

  def authorize_user
      redirect_to :back, status: 401 unless current_user
      #redirects to previous page
  end


private
  def record_not_found(error)
      render :json => {:error => error.message}, :status => :not_found
  end
end