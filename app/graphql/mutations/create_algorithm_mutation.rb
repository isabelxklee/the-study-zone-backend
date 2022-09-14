class Mutations::CreateAlgorithm < Mutations::BaseMutation
  # null true
  argument :title, String
  argument :description, String 
  argument :category, Types::CategoryType
  argument :difficulty_level, Types::DifficultyLevelType

  field :create_algorithm, Types::Algorithm
  field :errors, [String], null: false

  def resolve(title:, description:, category:, difficulty_level:)
    category = Category.find(category.id)
    difficulty_level = DifficultyLevel.find(difficulty_level.id)
    algorithm = category.algorithms.build(title: title, description: description, difficulty_level: difficulty_level)

    if algorithm.save
      {
        algorithm: algorithm,
        errors: []
      }
    else 
      {
        algorithm: nil
        errors: algorithm.errors.full_messages
      }
    end

  end
end