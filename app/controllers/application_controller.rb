class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :current_timeline_id

  private

  	def current_timeline_id
      if params[:controller] == "timelines" && params[:id].present?
        @current_timeline_id = params[:id]
      else
        @current_timeline_id = Timeline.last.id
      end  
    end
end
