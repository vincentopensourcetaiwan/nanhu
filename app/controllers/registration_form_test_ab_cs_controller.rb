class RegistrationFormTestAbCsController < ApplicationController
  before_action :set_registration_form_test_abc, only: [:show, :edit, :update, :destroy]

  # GET /registration_form_test_abcs
  # GET /registration_form_test_abcs.json
  def index
    @registration_form_test_abcs = RegistrationFormTestAbc.all
  end

  # GET /registration_form_test_abcs/1
  # GET /registration_form_test_abcs/1.json
  def show
  end

  # GET /registration_form_test_abcs/new
  def new
    @registration_form_test_abc = RegistrationFormTestAbc.new
  end

  # GET /registration_form_test_abcs/1/edit
  def edit
  end

  # POST /registration_form_test_abcs
  # POST /registration_form_test_abcs.json
  def create
    @registration_form_test_abc = RegistrationFormTestAbc.new(registration_form_test_abc_params)

    respond_to do |format|
      if @registration_form_test_abc.save
        format.html { redirect_to @registration_form_test_abc, notice: 'Registration form test abc was successfully created.' }
        format.json { render :show, status: :created, location: @registration_form_test_abc }
      else
        format.html { render :new }
        format.json { render json: @registration_form_test_abc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registration_form_test_abcs/1
  # PATCH/PUT /registration_form_test_abcs/1.json
  def update
    respond_to do |format|
      if @registration_form_test_abc.update(registration_form_test_abc_params)
        format.html { redirect_to @registration_form_test_abc, notice: 'Registration form test abc was successfully updated.' }
        format.json { render :show, status: :ok, location: @registration_form_test_abc }
      else
        format.html { render :edit }
        format.json { render json: @registration_form_test_abc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registration_form_test_abcs/1
  # DELETE /registration_form_test_abcs/1.json
  def destroy
    @registration_form_test_abc.destroy
    respond_to do |format|
      format.html { redirect_to registration_form_test_abcs_url, notice: 'Registration form test abc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registration_form_test_abc
      @registration_form_test_abc = RegistrationFormTestAbc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registration_form_test_abc_params
      params.require(:registration_form_test_abc).permit(:name, :phone)
    end
end
