Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/games_param" => "games#query"
    get "/guess_game/:user_guess" => "games#number_game"
    get "/url_segment_parameter/:name" => "games#segment"

    post "/guess_a_number" => "games#number_game"

    post "/user_password" => "games#password"
  end
end
