require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i ** 2
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number].to_i

    @phrase * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = [params[:word1],params[:word2], params[:word3], params[:word4], params[:word5]]
    @joined = @words.join(" ")
    "#{@joined}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

  case @operation
  when "add"
    "#{@num1 + @num2}"
  when "subtract"
    "#{@num1 - @num2}"
  when "multiply"
    "#{@num1 * @num2}"
  when "divide"
    "#{@num1 / @num2}"
  end
  end
end