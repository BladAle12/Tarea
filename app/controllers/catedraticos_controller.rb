class CatedraticosController < ApplicationController
  before_action :set_catedratico, only: [:show, :edit, :update, :destroy]

  # GET /catedraticos
  # GET /catedraticos.json
  def index
    @catedraticos = Catedratico.all
  end

  # GET /catedraticos/1
  # GET /catedraticos/1.json
  def show
  end

  # GET /catedraticos/new
  def new
    @catedratico = Catedratico.new
  end

  # GET /catedraticos/1/edit
  def edit
  end

  # POST /catedraticos
  # POST /catedraticos.json
  def create
    @catedratico = Catedratico.new(catedratico_params)

    respond_to do |format|
      if @catedratico.save
        format.html { redirect_to @catedratico, notice: 'Catedratico was successfully created.' }
        format.json { render :show, status: :created, location: @catedratico }
      else
        format.html { render :new }
        format.json { render json: @catedratico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catedraticos/1
  # PATCH/PUT /catedraticos/1.json
  def update
    respond_to do |format|
      if @catedratico.update(catedratico_params)
        format.html { redirect_to @catedratico, notice: 'Catedratico was successfully updated.' }
        format.json { render :show, status: :ok, location: @catedratico }
      else
        format.html { render :edit }
        format.json { render json: @catedratico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catedraticos/1
  # DELETE /catedraticos/1.json
  def destroy
    @catedratico.destroy
    respond_to do |format|
      format.html { redirect_to catedraticos_url, notice: 'Catedratico was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catedratico
      @catedratico = Catedratico.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catedratico_params
      params.require(:catedratico).permit(:Catedratico, :Edad, :FechaIngreso)
    end
end
