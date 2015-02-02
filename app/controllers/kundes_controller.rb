class KundesController < ApplicationController
  before_action :set_kunde, only: [:show, :edit, :update, :destroy]

  # GET /kundes
  # GET /kundes.json
  def index
    @kundes = Kunde.all
  end

  # GET /kundes/1
  # GET /kundes/1.json
  def show
  end

  # GET /kundes/new
  def new
    @kunde = Kunde.new
  end

  # GET /kundes/1/edit
  def edit
  end

  # POST /kundes
  # POST /kundes.json
  def create
    @kunde = Kunde.new(kunde_params)

    respond_to do |format|
      if @kunde.save
        format.html { redirect_to @kunde, notice: 'Kunde was successfully created.' }
        format.json { render action: 'show', status: :created, location: @kunde }
      else
        format.html { render action: 'new' }
        format.json { render json: @kunde.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kundes/1
  # PATCH/PUT /kundes/1.json
  def update
    respond_to do |format|
      if @kunde.update(kunde_params)
        format.html { redirect_to @kunde, notice: 'Kunde was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @kunde.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kundes/1
  # DELETE /kundes/1.json
  def destroy
    @kunde.destroy
    respond_to do |format|
      format.html { redirect_to kundes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kunde
      @kunde = Kunde.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kunde_params
      params.require(:kunde).permit(:gruppe, :anrede, :nachname, :vorname, :geburtsdatum, :geburtsort, :adresse, :plz, :stadt, :telefonnummer, :tsp_versicherungskunde)
    end
end
