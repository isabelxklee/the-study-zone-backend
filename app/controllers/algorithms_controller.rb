class AlgorithmsController < ApplicationController
  def index
    @algos = Algorithm.all
  end

  def show
    @algo = Algorithm.find(params[:id])
  end
end
