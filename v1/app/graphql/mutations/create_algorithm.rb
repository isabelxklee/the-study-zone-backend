class Mutations::CreateAlgorithm < Mutations::BaseMutation
  argument :title, String 
  argument :description, String 
  argument :category, Types::CategoryType
  argument :difficulty_level, Types::DifficultyLevelType

  field :algorithm, Types::Algorithm
  field :errors, [String], null: false

  def resolve(title:, description:, category:, difficulty_level:)
    algo = Algorithm.new(title: title, description: description, category: category, difficulty_level: difficulty_level)

    if algo.save 
      {
        algorithm: algo,
        errors: []
      }
    else 
      {
        algorithm: nil,
        errors: algo.errors.full_messages
      }
    end
  end
end