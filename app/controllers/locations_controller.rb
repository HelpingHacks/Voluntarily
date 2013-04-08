class LocationsController < ApplicationController
  	def index
    @surveys = Survey.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @surveys }
    end
  end
end