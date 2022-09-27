Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"

  get "/algorithms", to: "algorithms#index"
  get "/categories", to: "categories#index"
  get "/difficulties", to: "difficulties#index"

  resources :algorithms
  resources :difficulties
  resources :categories
end
