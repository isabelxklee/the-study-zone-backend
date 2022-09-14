module Types
  class QueryType < GraphQL::Schema::Object
    description "The query root of this schema"

    field :algorithm, AlgorithmType, "Find an algorithm by ID" do 
      argument :id, ID
    end

    def algorithm(id:)
      Algorithm.find(:id)
    end
  end
end
