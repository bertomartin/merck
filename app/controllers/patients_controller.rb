class PatientsController < ApplicationController
  def new
    @user = current_user
    @patient = Patient.new
  end

  def index
    @patients = Patient.all
  end

  def create
    # @patient = Patient.new(params[:patient])
    @user = current_user
    @patient = @user.patients.build(params[:patient])

    if @patient.save
      redirect_to current_user
    else
      flash[:error] = "Problem!"
      redirect_to current_user
    end
  end

  def show
    @patient = Patient.find(params[:id])
  end
end