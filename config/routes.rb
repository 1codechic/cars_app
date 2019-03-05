Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/cars" => "cars#index"
    get "/cars/:id" => "cars#show"
    post "/cars/new" => "cars#create"
    patch "/cars/:id" => "cars#update"
    delete "/cars/:id" => "cars#destroy"
  end
end
