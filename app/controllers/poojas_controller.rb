class PoojasController < ApplicationController
  before_action :set_pooja, only: [:show, :edit, :update, :destroy]

  # GET /poojas
  # GET /poojas.json
  def index
    @poojas = Pooja.all
  end

  # GET /poojas/1
  # GET /poojas/1.json
  def show
  end

  # GET /poojas/new
  def new
    @pooja = Pooja.new
  end

  # GET /poojas/1/edit
  def edit
  end

  # POST /poojas
  # POST /poojas.json
  def create
    @pooja = Pooja.new(pooja_params)

    respond_to do |format|
      if @pooja.save
        format.html { redirect_to @pooja, notice: 'Pooja was successfully created.' }
        format.json { render :show, status: :created, location: @pooja }
      else
        format.html { render :new }
        format.json { render json: @pooja.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poojas/1
  # PATCH/PUT /poojas/1.json
  def update
    respond_to do |format|
      if @pooja.update(pooja_params)
        format.html { redirect_to @pooja, notice: 'Pooja was successfully updated.' }
        format.json { render :show, status: :ok, location: @pooja }
      else
        format.html { render :edit }
        format.json { render json: @pooja.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poojas/1
  # DELETE /poojas/1.json
  def destroy
    @pooja.destroy
    respond_to do |format|
      format.html { redirect_to poojas_url, notice: 'Pooja was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pooja
      @pooja = Pooja.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pooja_params
      params.require(:pooja).permit(:name, :idol, :description, :price, :availability)
    end
end
