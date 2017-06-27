require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    product = @number * @number
    product.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * @number
    # @number.times do
    #  @phrase
    # end
   end

   get '/say/:word1/:word2/:word3/:word4/:word5' do
     @word1 = params[:word1]
     @word2 = params[:word2]
     @word3 = params[:word3]
     @word4 = params[:word4]
     @word5 = params[:word5]
     "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
   end

   get '/add/:number1/:number2' do
     @number1 = params[:number1].to_i
     @number2 = params[:number2].to_i
     sum = @number1 + @number2
     sum.to_s
   end

   get '/subtract/:number1/:number2' do
     @number1 = params[:number1].to_i
     @number2 = params[:number2].to_i
     sum = @number1 - @number2
     sum.to_s
   end

   get '/multiply/:number1/:number2' do
     @number1 = params[:number1].to_i
     @number2 = params[:number2].to_i
     sum = @number1 * @number2
     sum.to_s
   end

   get '/divide/:number1/:number2' do
     @number1 = params[:number1].to_i
     @number2 = params[:number2].to_i
     sum = @number1 / @number2
     sum.to_s
   end



end
