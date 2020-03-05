class Api::GamesController < ApplicationController
  def query
    @user_name = params[:name]
    @user_name = @user_name.upcase
    if @user_name.first == "A"
      @msg = "Hey, your name starts with the first letter of the alphabet!"
    end
    render 'query.json.jb'
  end

  def number_game
    number = 57
    if params[:number].to_i == 57
      @message = "You Win!"
    elsif params[:number].to_i < 57
      @message = "Too Low."
    else
      @message = "Too High."
    end
    render 'number.json.jb'
  end
end
