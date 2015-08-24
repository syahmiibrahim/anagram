get '/' do
  # Look in app/views/index.erb
  
  erb :index
end

post '/find' do
  perkataan = params[:user_input]
  redirect to("/#{perkataan}")

end


get '/:word' do

  @word = params[:word]
  @sorted = @word.downcase.split("").sort.join
  @anagrams = Word.where(sorted: "\n"+ @sorted)

  erb :index
 end