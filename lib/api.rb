require 'pry'
require 'rest-client'
require 'json'

class API 

  def self.fetch_songs 
   url = "https://www.songsterr.com/a/ra/songs/byartists.json?artists=Metallica"
   response = JSON.parse(RestClient.get(url).to_s)
   binding.pry 
  end 


end 