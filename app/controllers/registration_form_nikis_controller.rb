class RegistrationFormNikisController < ApplicationController
  before_action :set_registration_form_niki, only: [:show, :edit, :update, :destroy]

  # GET /registration_form_nikis
  # GET /registration_form_nikis.json
  def index
    @registration_form_nikis = RegistrationFormNiki.all
  end

  # GET /registration_form_nikis/1
  # GET /registration_form_nikis/1.json
  def show
  end

  # GET /registration_form_nikis/new
  def new
    @registration_form_niki = RegistrationFormNiki.new
  end

  # GET /registration_form_nikis/1/edit
  def edit
  end

  # POST /registration_form_nikis
  # POST /registration_form_nikis.json
  def create
    @registration_form_niki = RegistrationFormNiki.new(registration_form_niki_params)

    respond_to do |format|
      if @registration_form_niki.save
        format.html { redirect_to @registration_form_niki, notice: 'Registration form niki was successfully created.' }
        format.json { render :show, status: :created, location: @registration_form_niki }
      else
        format.html { render :new }
        format.json { render json: @registration_form_niki.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registration_form_nikis/1
  # PATCH/PUT /registration_form_nikis/1.json
  def update
    respond_to do |format|
      if @registration_form_niki.update(registration_form_niki_params)
        format.html { redirect_to @registration_form_niki, notice: 'Registration form niki was successfully updated.' }
        format.json { render :show, status: :ok, location: @registration_form_niki }
      else
        format.html { render :edit }
        format.json { render json: @registration_form_niki.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registration_form_nikis/1
  # DELETE /registration_form_nikis/1.json
  def destroy
    @registration_form_niki.destroy
    respond_to do |format|
      format.html { redirect_to registration_form_nikis_url, notice: 'Registration form niki was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registration_form_niki
      @registration_form_niki = RegistrationFormNiki.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registration_form_niki_params
      params.require(:registration_form_niki).permit(:name, :phone)
    end
end
