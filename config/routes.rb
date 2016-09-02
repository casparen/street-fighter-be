Rails.application.routes.draw do
  get "/highscores" => "fighters#index"
  post "/highscores/new" => "fighters#create"
end
