class LandingController < ApplicationController
  def index
    @counties = School.select(:county).uniq
    @schools = []
    @years = []
  end

  def show_exams
    @school = School.find_by_state_lea_id(params[:school_id])
    @school_name = @school.lea_name
    @exams = Exam.where("state_lea_id = ? AND academic_year_start = ?", params[:school_id], params[:year_id])
  end

  def update_schools
    @schools = School.includes(:Exam).where("county = ?", params[:county]).where.not(data_exam: { state_lea_id: nil })
    respond_to do |format|
      format.js
    end
  end

  def update_years
    @years = Exam.where("state_lea_id = ?", params[:school]).select(:academic_year_start, :academic_year_end).uniq
    respond_to do |format|
      format.js
    end
  end
end
