class FlavoursController < ApplicationController
  before_action :set_flavour, only: [:show]

  # GET /flavours/1
  # GET /flavours/1.json
  def show
  end

  # GET /flavours/new
  def new
    @flavour = Flavour.new
  end

  # POST /flavours
  # POST /flavours.json
  def create
    @flavour = Flavour.new(flavour_params)

    respond_to do |format|
      if @flavour.save
        format.html { redirect_to @flavour, notice: 'Flavour was successfully created.' }
        format.json { render :show, status: :created, location: @flavour }
      else
        format.html { render :new }
        format.json { render json: @flavour.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_flavour
      @flavour = Flavour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def flavour_params
      params.require(:flavour).permit(:name, :mood, :personality, :cheekyness, :transport, :scenariotube)
    end
end
