class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authenticate, :if => lambda {|c| Rails.env.production?}

  protected

  def authenticate
    raise "Authentication vars not set" unless (ENV['AUTH_USERNAME'] and ENV['AUTH_PASSWORD']).present? 
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV['AUTH_USERNAME'] && password == ENV['AUTH_PASSWORD']
    end
  end

end
