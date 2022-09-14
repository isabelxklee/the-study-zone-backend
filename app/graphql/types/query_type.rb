module Types
  class QueryType < GraphQL::Schema::Object
    description "The query root of this schema"

    field :algorithms, [Types::AlgorithmType], "Fetch all existing algorithms."

    def algorithms
      Algorithm.all
    end

    field :algorithm, Types::AlgorithmType, "Find an algorithm by its ID." do 
      argument :id, ID
    end

    def algorithm(id:)
      Algorithm.find(id)
    end
  end
end
