# frozen_string_literal: true

module Types
  class AlgorithmType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :description, String
    field :solution, String
    field :category, Types::CategoryType
    field :difficulty, Types::DifficultyType
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
