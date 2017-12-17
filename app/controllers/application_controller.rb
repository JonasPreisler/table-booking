class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  skip_before_filter :verify_authenticity_token
  before_action :authenticate_user!
  
  def authorize_user
      redirect_to :back, status: 401 unless current_user
      #redirects to previous page
  end
end
