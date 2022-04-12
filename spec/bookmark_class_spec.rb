require './app.rb'
require './lib/bookmark.rb'

describe Bookmark do
    describe '.all' do
    it 'should display an array of bookmarks - seperated' do
      bookmarks = Bookmark.all
      expect(bookmarks).to include('http://www.google.com')
      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
    end
  end
end