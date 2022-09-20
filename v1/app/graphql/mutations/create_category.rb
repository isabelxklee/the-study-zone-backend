class Mutations::CreateCategory < Mutations::BaseMutation
  argument :title, String 

  field :category, Types::CategoryType
  field :errors, [String], null: false

  def resolve(title:)
    category = Category.new(title: title)

    if category.save
      {
        category: category,
        errors: []
      }
    else
      {
        category: nil,
        errors: category.errors.full_messages
      }
    end
  end
end