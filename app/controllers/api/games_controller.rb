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
    user_guess = params[:user_guess].to_i
    answer = 57
    if user_guess == answer
      @message = "You Win!"
    elsif user_guess < answer
      @message = "Too Low."
    else
      @message = "Too High."
    end
    render 'number.json.jb'
  end

  def segment
    @name = params[:name]
    render 'name.json.jb'
  end
end
