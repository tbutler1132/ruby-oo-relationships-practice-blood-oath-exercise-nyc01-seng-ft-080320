class Bloodoath

    attr_accessor :cult, :follower
    attr_reader :date
    @@all = []

    def initialize(date, cult, follower)
        @date = date
        @cult = cult
        @follower = follower
        @@all << self
    end

    def self.all
        @@all
    end 

end