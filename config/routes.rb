Rails.application.routes.draw do
  get "/" => "sneakers#index"
  
  get "/sneakers" => "sneakers#index"
  get "/sneakers/new" => "sneakers#new"
  get "/sneakers" => "sneakers#create" 
  get "/sneakers/:id" => "sneakers#show"
  get "/sneakers/:id/edit" => "sneakers#edit"
  patch "/sneakers/:id" => "sneakers#update"
  delete "/sneakers/:id" => "sneakers#destroy"

  get "/iceberg/:id" => "sneakers#test_method"
end
