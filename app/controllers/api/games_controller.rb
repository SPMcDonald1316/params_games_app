class Api::GamesController < ApplicationController
  def query
    @user_name = params["name"]
    @user_name = @user_name.upcase
    if @user_name.chars.first == "A"
      @msg = "Hey, your name starts with the first letter of the alphabet!"
    end
    render 'query.json.jb'
  end
end
