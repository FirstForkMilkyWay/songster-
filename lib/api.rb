require 'pry'
require 'rest-client'
require 'json'
require_relative "artist.rb"

class API



  def self.fetch_songs
   url = "https://www.songsterr.com/a/ra/songs/byartists.json?artists=Metallica"
   response = JSON.parse(RestClient.get(url).to_s)
       song = Songs.new
       song.name = response[0]["title"]
       song.artist = response[0]["artist"]["name"]
       song.tab_types = response[0]["tabTypes"]

     binding.pry
  end


end




#response[0]["artist"]["name"] = Metallica
#response[0]["title"] = Enter Sandman
