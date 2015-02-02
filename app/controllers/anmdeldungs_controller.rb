class AnmdeldungsController < ApplicationController
  before_action :set_anmdeldung, only: [:show, :edit, :update, :destroy]

  # GET /anmdeldungs
  # GET /anmdeldungs.json
  def index
    @anmdeldungs = Anmdeldung.all
  end

  # GET /anmdeldungs/1
  # GET /anmdeldungs/1.json
  def show
  end

  # GET /anmdeldungs/new
  def new
    @anmdeldung = Anmdeldung.new
  end

  # GET /anmdeldungs/1/edit
  def edit
  end

  # POST /anmdeldungs
  # POST /anmdeldungs.json
  def create
    @anmdeldung = Anmdeldung.new(anmdeldung_params)

    respond_to do |format|
      if @anmdeldung.save
        format.html { redirect_to @anmdeldung, notice: 'Anmdeldung was successfully created.' }
        format.json { render action: 'show', status: :created, location: @anmdeldung }
      else
        format.html { render action: 'new' }
        format.json { render json: @anmdeldung.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /anmdeldungs/1
  # PATCH/PUT /anmdeldungs/1.json
  def update
    respond_to do |format|
      if @anmdeldung.update(anmdeldung_params)
        format.html { redirect_to @anmdeldung, notice: 'Anmdeldung was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @anmdeldung.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /anmdeldungs/1
  # DELETE /anmdeldungs/1.json
  def destroy
    @anmdeldung.destroy
    respond_to do |format|
      format.html { redirect_to anmdeldungs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_anmdeldung
      @anmdeldung = Anmdeldung.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def anmdeldung_params
      params.require(:anmdeldung).permit(:identnummer, :amtliches_kennzeichen, :neues_kennzeichen, :fp, :fz_brief_nr, :saison_von, :saison_bis, :evb_nr, :kva_notiz, :tsp_notiz, :versand_art, :kunde_id)
    end
end
