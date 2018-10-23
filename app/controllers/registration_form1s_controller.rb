class RegistrationForm1sController < ApplicationController
  before_action :set_registration_form1, only: [:show, :edit, :update, :destroy]

  # GET /registration_form1s
  # GET /registration_form1s.json
  def index
    @registration_form1s = RegistrationForm1.all
  end

  # GET /registration_form1s/1
  # GET /registration_form1s/1.json
  def show
  end

  # GET /registration_form1s/new
  def new
    @registration_form1 = RegistrationForm1.new
  end

  # GET /registration_form1s/1/edit
  def edit
  end

  # POST /registration_form1s
  # POST /registration_form1s.json
  def create
    @registration_form1 = RegistrationForm1.new(registration_form1_params)

    respond_to do |format|
      if @registration_form1.save
        format.html { redirect_to @registration_form1, notice: 'Registration form1 was successfully created.' }
        format.json { render :show, status: :created, location: @registration_form1 }
      else
        format.html { render :new }
        format.json { render json: @registration_form1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registration_form1s/1
  # PATCH/PUT /registration_form1s/1.json
  def update
    respond_to do |format|
      if @registration_form1.update(registration_form1_params)
        format.html { redirect_to @registration_form1, notice: 'Registration form1 was successfully updated.' }
        format.json { render :show, status: :ok, location: @registration_form1 }
      else
        format.html { render :edit }
        format.json { render json: @registration_form1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registration_form1s/1
  # DELETE /registration_form1s/1.json
  def destroy
    @registration_form1.destroy
    respond_to do |format|
      format.html { redirect_to registration_form1s_url, notice: 'Registration form1 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registration_form1
      @registration_form1 = RegistrationForm1.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registration_form1_params
      params.require(:registration_form1).permit(:name, :phone)
    end
end
