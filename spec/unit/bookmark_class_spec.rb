require './app.rb'
require './lib/bookmark.rb'

describe Bookmark do
    describe '.all' do
    it 'should display an empty array of bookmarks - seperated' do
      bookmarks = Bookmark.all
      expect(bookmarks).to eq([])
    end
  end

    describe '.create' do
      it 'creates a new bookmark' do
        Bookmark.create(url: 'http://www.facebook.com')
    
        expect(Bookmark.all).to include 'http://www.facebook.com'
      end
    end
end