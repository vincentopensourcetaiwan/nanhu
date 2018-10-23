class RegistrationFormtestsController < ApplicationController
  before_action :set_registration_formtest, only: [:show, :edit, :update, :destroy]

  # GET /registration_formtests
  # GET /registration_formtests.json
  def index
    @registration_formtests = RegistrationFormtest.all
  end

  # GET /registration_formtests/1
  # GET /registration_formtests/1.json
  def show
  end

  # GET /registration_formtests/new
  def new
    @registration_formtest = RegistrationFormtest.new
  end

  # GET /registration_formtests/1/edit
  def edit
  end

  # POST /registration_formtests
  # POST /registration_formtests.json
  def create
    @registration_formtest = RegistrationFormtest.new(registration_formtest_params)

    respond_to do |format|
      if @registration_formtest.save
        format.html { redirect_to @registration_formtest, notice: 'Registration formtest was successfully created.' }
        format.json { render :show, status: :created, location: @registration_formtest }
      else
        format.html { render :new }
        format.json { render json: @registration_formtest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registration_formtests/1
  # PATCH/PUT /registration_formtests/1.json
  def update
    respond_to do |format|
      if @registration_formtest.update(registration_formtest_params)
        format.html { redirect_to @registration_formtest, notice: 'Registration formtest was successfully updated.' }
        format.json { render :show, status: :ok, location: @registration_formtest }
      else
        format.html { render :edit }
        format.json { render json: @registration_formtest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registration_formtests/1
  # DELETE /registration_formtests/1.json
  def destroy
    @registration_formtest.destroy
    respond_to do |format|
      format.html { redirect_to registration_formtests_url, notice: 'Registration formtest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registration_formtest
      @registration_formtest = RegistrationFormtest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registration_formtest_params
      params.require(:registration_formtest).permit(:name, :phone)
    end
end
