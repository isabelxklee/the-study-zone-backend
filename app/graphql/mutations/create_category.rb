# frozen_string_literal: true

module Mutations
  class CreateCategory < BaseMutation
    description "Creates a new category"

    argument :title, String, required: true

    field :errors, [String], null: false

    def resolve(title:)
      category = Category.new(title: title)
      if category.save
        {
          category: category,
          errors: [],
        }
      else
        {
          category: nil,
          errors: category.errors.full_messages
        }
      end
    end
  end
end
