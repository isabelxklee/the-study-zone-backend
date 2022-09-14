module Types
  class MutationType < Types::BaseObject
    description "The query root of this schema"

    field :create_category, Types::CategoryType, "Create a new category." do
      argument :title, String
    end

    def create_category(title:)
      Category.new(title: title)
    end

    field :create_algorithm, Types:AlgorithmType, "Create a new algorithm." do 
      argument :title, String 
      argumnet :description, String 
      argument :category, Types::CategoryType 
      argument :difficulty_level, Types::DifficultyLevelType
    end

    def create_algorithm(title:, description:, category:, difficulty_level:)
      Algorithm.new(title: title, description: description, category: category, difficulty_level: difficulty_level)
    end
  end
end