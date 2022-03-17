Rails.application.routes.draw do
  get "/validations" => "validations#index"
  post "/validations" => "validations#create"
  get "/validations/:id" => "validations#show" 
  patch "/validations/:id" => "validations#update"
  delete "/validations/:id" => "validations#destroy"
end
