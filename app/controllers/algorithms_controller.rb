class AlgorithmsController < ApplicationController
  before_action :set_algorithm, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token

  # GET /algorithms or /algorithms.json
  def index
    @algorithms = Algorithm.all

    render json: @algorithms
  end

  # GET /algorithms/1 or /algorithms/1.json
  def show
  end

  # GET /algorithms/new
  def new
    @algorithm = Algorithm.new
  end

  # GET /algorithms/1/edit
  def edit
  end

  # POST /algorithms or /algorithms.json
  def create
    @algorithm = Algorithm.new(algorithm_params)

    respond_to do |format|
      if @algorithm.save
        format.html { redirect_to algorithm_url(@algorithm), notice: "Algorithm was successfully created." }
        format.json { render :show, status: :created, location: @algorithm }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @algorithm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /algorithms/1 or /algorithms/1.json
  def update
    respond_to do |format|
      if @algorithm.update(algorithm_params)
        format.html { redirect_to algorithm_url(@algorithm), notice: "Algorithm was successfully updated." }
        format.json { render :show, status: :ok, location: @algorithm }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @algorithm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /algorithms/1 or /algorithms/1.json
  def destroy
    @algorithm.destroy

    respond_to do |format|
      format.html { redirect_to algorithms_url, notice: "Algorithm was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_algorithm
      @algorithm = Algorithm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def algorithm_params
      params.require(:algorithm).permit(:name, :description, :category_id, :difficulty_id)
    end
end
