require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name].reverse
    "#{@name}"
  end

  get "/square/:number" do
    @number = params[:number].to_i ** 2
    "#{@number}"
  end

  get "/say/:number/:phrase" do
    @attached_phrase = []
    params[:number].to_i.times do
      @attached_phrase.push(params[:phrase])
    end
    @attached_phrase.to_s
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @result = []
    case @operation
    when "add"
      @result.push(@num1 + @num2)
    when "subtract"
      @result.push(@num1 - @num2)
    when "multiply"
      @result.push(@num1 * @num2)
    when "divide"
      @result.push(@num1 / @num2)
    end
    @result.to_s
  end

end
