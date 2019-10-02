# require 'byebug'

class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    # song = Song.find_by(title: self.title)
    # song.artist.name
    # debugger
    artist.name if artist
  end

  def artist_name=(name)
    artist = Artist.find_or_create_by(name: name)
    self.artist = artist
  end
end
