require './app.rb'
require './lib/bookmark.rb'
require 'database_helpers.rb'

describe Bookmark do
    describe '.all' do
    it 'should display an empty array of bookmarks - seperated' do
      bookmarks = Bookmark.all
      expect(bookmarks).to eq([])
    end
  end

    describe '.create' do
      it 'creates a new bookmark' do
        bookmark = Bookmark.create(url: 'http://www.facebook.com', title: 'Facebook')
        persisted_data = persisted_data(id: bookmark.id)
        expect(bookmark.title).to eq "Facebook"
        expect(bookmark.url).to eq "http://www.facebook.com"
        expect(bookmark).to be_a(Bookmark)
        expect(bookmark.id).to eq persisted_data['id']
    end
  end
end