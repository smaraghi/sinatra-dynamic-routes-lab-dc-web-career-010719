require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num*@num}"
  end

  get '/say/:number/:phrase' do
    phrase = params[:phrase]
    number = params[:number].to_i
    phrase * number 
    end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    w1 = params[:word1]
    w2 = params[:word2]
    w3 = params[:word3]
    w4 = params[:word4]
    w5 = params[:word5]
    array = [w1, w2, w3, w4, w5]
    array.join(" ") + (".")
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    case params[:operation]
    when 'add'
      (number1 + number2).to_s 
    when 'subtract'
      (number2 - number1).to_s
    when 'multiply'
      (number1 * number2).to_s
    when 'divide'
      (number1/number2).to_s
    end
  end
end