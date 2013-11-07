get '/' do
  # Look in app/views/index.erb
  erb :index
end

get '/albums' do
  @albums_w_users = Album.all.map do |album|
    { album: album.name, 
      album_id: album.id, 
      user: User.find(album.user_id) }
  end
  erb :albums
end

get 'albums/:album_id' do
  @album = Album.find(params[:album_id])
  @photos = @album.photos
  @user = User.find(@album.user_id)
  erb :album_page
end

get 'users/:user_id' do
  @user = User.find(params[:user_id])
  erb: user_page
end
