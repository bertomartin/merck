class PatientsController < ApplicationController
  def new
    @patient = Patient.new
  end

  def create
  end

  def show
    @patient = Patient.find(params[:id])
  end
end