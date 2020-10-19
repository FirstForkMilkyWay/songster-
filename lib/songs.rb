class Songs

    attr_accessor :name, :artist, :tab_types

    @@all = []

    def initialize
      @@all << self
    end

    def self.all
      @@all
    end 





end
