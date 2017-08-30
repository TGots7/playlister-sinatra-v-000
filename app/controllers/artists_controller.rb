class ArtistsController < ApplicationController


  get '/artists' do

    erb :'/artists/index'
  end

  get '/artists/:slug' do
    @artist_id = Artist.find_by_slug(params[:slug])

    erb :'artists/show'
  end

end
