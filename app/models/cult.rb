class Cult

    attr_accessor :name, :city, :year, :slogan
    attr_reader :year
    @@all = []

    def initialize(name, city, year, slogan)
        @name = name
        @city = city
        @year = year
        @slogan = slogan
        @@all << self
    end 

    def bloodoaths
        Bloodoath.all.select do |pact|
            pact.cult == self
        end
    end

    def followers
        bloodoaths.map do |pact|
            pact.follower
        end
    end

    def cult_population
        followers.count 
    end
    
    def self.find_by_name(cult_name)
        @@all.find do |cult|
            cult.name == cult_name
        end
    end

    def self.find_by_location(city)
        @@all.select do |cult|
            cult.city == city
        end
    end 

    def my_followers_mottos
        followers.each do |motto_ele|
            puts motto_ele.motto
        end.min
    end 

    def self.least_popular
        array = @@all.map do |cult|
            cult.followers.count
        end
        ear = array.min
        answer = array.find_index(ear)
        @@all[answer] 
    end  
    
    def self.most_common_locations
        cities = @@all.map do |cult|
            cult.city
        end
        cities.max_by {|city| cities.count(city)} 
    end

    def recruit_follower(date, follower)
        Bloodoath.new(date, self, follower)
    end
    
    
    
    def self.all
        @@all
    end 

end