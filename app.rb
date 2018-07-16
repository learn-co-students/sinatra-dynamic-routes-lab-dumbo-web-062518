require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    @square= number ** 2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]
      @say = phrase * number
      "#{@say}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @concat = [params[:word1],params[:word2],params[:word3],params[:word4],params[:word5]].join(" ")
    "#{@concat}."
  end

  get '/:operation/:number1/:number2' do
      @add = params[:number1].to_i + params[:number2].to_i
      @sub = params[:number1].to_i - params[:number2].to_i
      @mul = params[:number1].to_i * params[:number2].to_i
      @div = params[:number1].to_i / params[:number2].to_i

      "#{@add}, #{@sub}, #{@mul}, #{@div}"
    end
end
