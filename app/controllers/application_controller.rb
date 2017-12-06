class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  require 'strava/api/v3'
  require 'json'

  def index

  end
end
