class Mutations::Algorithm < Mutations::BaseMutation
  argument :title, String 
  argument :description, String 
  argument :category, Types::CategoryType
  argument :difficulty_level, Types::DifficultyLevelType

  field :algorithm, Types::Algorithm
  field :errors, [String], null: false

  def resolve(title:, description:, category:, difficulty_level:)
    
  end
end