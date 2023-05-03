class EvaantsController < ApplicationController
  before_action :set_evaant, only: %i[ show edit update destroy ]

  # GET /evaants or /evaants.json
  def index
    @evaants = Evaant.all
  end

  # GET /evaants/1 or /evaants/1.json
  def show
  end

  # GET /evaants/new
  def new
    @evaant = Evaant.new
  end

  # GET /evaants/1/edit
  def edit
  end

  # POST /evaants or /evaants.json
  def create
    @evaant = Evaant.new(evaant_params)

    respond_to do |format|
      if @evaant.save
        format.html { redirect_to evaant_url(@evaant), notice: "Evaant was successfully created." }
        format.json { render :show, status: :created, location: @evaant }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @evaant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /evaants/1 or /evaants/1.json
  def update
    respond_to do |format|
      if @evaant.update(evaant_params)
        format.html { redirect_to evaant_url(@evaant), notice: "Evaant was successfully updated." }
        format.json { render :show, status: :ok, location: @evaant }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @evaant.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaants/1 or /evaants/1.json
  def destroy
    @evaant.destroy

    respond_to do |format|
      format.html { redirect_to evaants_url, notice: "Evaant was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_evaant
      @evaant = Evaant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def evaant_params
      params.require(:evaant).permit(:clubname, :evant, :desc, :when)
    end
end
