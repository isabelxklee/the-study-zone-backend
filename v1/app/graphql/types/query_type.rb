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

    field :difficulty_levels, [Types::DifficultyLevelType], "Fetch all existing difficulty levels."

    def difficulty_levels
      DifficultyLevel.all
    end

    field :categories, [Types::CategoryType], "Fetch all existing categories."

    def categories
      Category.all
    end
  end
end
