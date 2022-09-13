class AlgorithmsController < ApplicationController
  def index
    @algos = Algorithm.all
  end

  def show
    @algo = Algorithm.find(params[:id])
    query_string = "{
      algorithm {
        title
        description
      }
    }"
    
    MySchema.execute(query_string)
  end
end
