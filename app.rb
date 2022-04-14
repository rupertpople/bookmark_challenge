require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'This is your bookmark manager'
  end

  get '/bookmarks' do
   @bookmarks = Bookmark.all
   erb :bookmark_view
  end

  post '/add-bookmark' do
    Bookmark.create(url: params[:bookmark], title: params[:title])
    redirect to('/bookmark-added')
  end

  get '/bookmark-added' do
    erb :bookmark_added
  end
  
end
