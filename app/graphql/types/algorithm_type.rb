# frozen_string_literal: true

module Types
  class AlgorithmType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :description, String
    field :category, Types::CategoryType
    field :difficulty_level, Types::DifficultyLevelType
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
