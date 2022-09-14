module Types
  class MutationType < Types::BaseObject
    description "The query root of this schema"

    field :create_category, Types::CategoryType, "Create a new category" do
      argument :title, String
    end

    def create_category(title:)
      Category.new(title: title)
    end
  end
end