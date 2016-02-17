class ActiosController < ApplicationController
  before_action :set_actio, only: [:show, :edit, :update, :destroy]

  # GET /actios
  # GET /actios.json
  def index
    @actios = Actio.all
  end

  # GET /actios/1
  # GET /actios/1.json
  def show
  end

  # GET /actios/new
  def new
    @actio = Actio.new
  end

  # GET /actios/1/edit
  def edit
  end

  # POST /actios
  # POST /actios.json
  def create
    @actio = Actio.new(actio_params)

    respond_to do |format|
      if @actio.save
        format.html { redirect_to @actio, notice: 'Actio was successfully created.' }
        format.json { render :show, status: :created, location: @actio }
      else
        format.html { render :new }
        format.json { render json: @actio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actios/1
  # PATCH/PUT /actios/1.json
  def update
    respond_to do |format|
      if @actio.update(actio_params)
        format.html { redirect_to @actio, notice: 'Actio was successfully updated.' }
        format.json { render :show, status: :ok, location: @actio }
      else
        format.html { render :edit }
        format.json { render json: @actio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actios/1
  # DELETE /actios/1.json
  def destroy
    @actio.destroy
    respond_to do |format|
      format.html { redirect_to actios_url, notice: 'Actio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actio
      @actio = Actio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actio_params
      params.require(:actio).permit(:nom_action)
    end
end
