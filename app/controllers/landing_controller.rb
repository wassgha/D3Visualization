class LandingController < ApplicationController
  def index
    @counties = School.select(:county).uniq
    @schools = []
  end
  
  def update_schools
    @schools = School.where("county = ?", params[:county])
    respond_to do |format|
      format.js
    end
  end
end
