require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    erb :reversename
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number ** 2
    erb :square
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase].to_s
    @say = @phrase * @number
    "#{@say}"
    # erb :say
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} " + "#{@word2} " + "#{@word3} " + "#{@word4} " + "#{@word5}."
    # erb :say
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @add = @number1 + @number2
    @mul = @number1 * @number2
    @div = @number1 / @number2
    @sub = @number1 - @number2
    "#{@add}, #{@mul}, #{@div}, #{@sub}"
  end

end
