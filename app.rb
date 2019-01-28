require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @user_name = params[:name].reverse!
    "#{@user_name}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @n = params[:number].to_i
    @phrase = params[:phrase].to_s
    sentence = ""
    @n.times do
      sentence += @phrase
    end
    sentence
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1].to_s
    word2 = params[:word2].to_s
    word3 = params[:word3].to_s
    word4 = params[:word4].to_s
    word5 = params[:word5].to_s
    "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end
  #

  #adds two numbers together (FAILED - 1)
    # subtracts the second number from the first (FAILED - 2)
    # multiplies two numbers together (FAILED - 3)
    # divides the first number by the second number (FAILED - 4)
  get '/:operation/:number1/:number2' do
  n1 = params[:number1].to_i
  n2 = params[:number2].to_i
  case params[:operation]
  when 'add'
    (n1 + n2).to_s
  when 'subtract'
    (n1 - n2).to_s
  when 'multiply'
    (n1 * n2).to_s
  when 'divide'
    (n1 / n2).to_s
  end
end
end #end of class
