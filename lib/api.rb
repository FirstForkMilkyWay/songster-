require 'pry'
require 'rest-client'
require 'json'
require_relative "artist.rb"

class API

    attr_accessor :name

  def self.fetch_songs
   url = "https://www.songsterr.com/a/ra/songs/byartists.json?artists=Metallica"
   response = JSON.parse(RestClient.get(url).to_s)
  #  array_of_songs = response[0]
  #  array_of_songs.each do |song_name["title"]|
    # response.each do |song_name|
       song = Songs.new
       song.name = response[0]["title"]
     binding.pry
   end
  end

  def self.sort_song

  end




#response[0]["artist"]["name"] = Metallica
#response[0]["title"] = Enter Sandman
end
