# frozen_string_literal: true

module Types
  class DifficultyLevelType < Types::BaseObject
    field :id, ID, null: false
    field :title, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :title, String
  end
end
