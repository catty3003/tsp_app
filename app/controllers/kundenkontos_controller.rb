class KundenkontosController < ApplicationController
  before_action :set_kundenkonto, only: [:show, :edit, :update, :destroy]

  # GET /kundenkontos
  # GET /kundenkontos.json
  def index
    @kundenkontos = Kundenkonto.all
  end

  # GET /kundenkontos/1
  # GET /kundenkontos/1.json
  def show
  end

  # GET /kundenkontos/new
  def new
    @kundenkonto = Kundenkonto.new
  end

  # GET /kundenkontos/1/edit
  def edit
  end

  # POST /kundenkontos
  # POST /kundenkontos.json
  def create
    @kundenkonto = Kundenkonto.new(kundenkonto_params)

    respond_to do |format|
      if @kundenkonto.save
        format.html { redirect_to @kundenkonto, notice: 'Kundenkonto was successfully created.' }
        format.json { render action: 'show', status: :created, location: @kundenkonto }
      else
        format.html { render action: 'new' }
        format.json { render json: @kundenkonto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /kundenkontos/1
  # PATCH/PUT /kundenkontos/1.json
  def update
    respond_to do |format|
      if @kundenkonto.update(kundenkonto_params)
        format.html { redirect_to @kundenkonto, notice: 'Kundenkonto was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @kundenkonto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kundenkontos/1
  # DELETE /kundenkontos/1.json
  def destroy
    @kundenkonto.destroy
    respond_to do |format|
      format.html { redirect_to kundenkontos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kundenkonto
      @kundenkonto = Kundenkonto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kundenkonto_params
      params.require(:kundenkonto).permit(:iban, :bic, :institut, :kunde_id)
    end
end
