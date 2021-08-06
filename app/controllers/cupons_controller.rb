class CuponsController < ApplicationController
  before_action :set_cupon, only: %i[ show edit update destroy ]

  # GET /cupons or /cupons.json
  def index
    @cupons = Cupon.all
  end

  # GET /cupons/1 or /cupons/1.json
  def show
  end

  # GET /cupons/new
  def new
    @cupon = Cupon.new
  end

  # GET /cupons/1/edit
  def edit
  end

  # POST /cupons or /cupons.json
  def create
    @cupon = Cupon.new(cupon_params)

    respond_to do |format|
      if @cupon.save
        format.html { redirect_to @cupon, notice: "Cupon was successfully created." }
        format.json { render :show, status: :created, location: @cupon }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cupon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cupons/1 or /cupons/1.json
  def update
    respond_to do |format|
      if @cupon.update(cupon_params)
        format.html { redirect_to @cupon, notice: "Cupon was successfully updated." }
        format.json { render :show, status: :ok, location: @cupon }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cupon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cupons/1 or /cupons/1.json
  def destroy
    @cupon.destroy
    respond_to do |format|
      format.html { redirect_to cupons_url, notice: "Cupon was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cupon
      @cupon = Cupon.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cupon_params
      params.require(:cupon).permit(:type, :code, :amount, :discount, :user_id)
    end
end
