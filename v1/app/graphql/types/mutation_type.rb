# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    description "The query root of this schema"

    field :create_category, Types::CategoryType, "Create a new category." do
      argument :title, String
    end

    def create_category(title:)
      Category.new(title: title)
    end

    field :create_algorithm, Types::AlgorithmType, "Create a new algorithm." do 
      argument :title, String 
      argument :description, String 
      argument :category_id, ID
      argument :difficulty_level_id, ID
    end

    def create_algorithm(title:, description:, category_id:, difficulty_level_id:)
      Algorithm.new(title: title, description: description, category: category_id, difficulty_level: difficulty_level_id)
    end
  end
end