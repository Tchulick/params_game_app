Rails.application.routes.draw do
  namespace :api do
    get "/params_game" => "game#message_action"
  end
end
