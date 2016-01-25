# Homepage (Root path)
get '/' do
  erb :index
end

get '/tracks' do
  @tracks = Track.all
  erb :'tracks/index'
end

get '/tracks/new' do
  erb :'tracks/new'
end

get '/tracks/:id' do
  @track = Track.find params[:id]
  erb :'tracks/show'
end

post '/tracks' do
  @track = Track.new(
    title:   params[:title],
    artist:  params[:artist],
    bpm:     params[:bpm]
  )
  if @track.save
    redirect '/tracks'
  else
    erb :'messages/new'
  end
end