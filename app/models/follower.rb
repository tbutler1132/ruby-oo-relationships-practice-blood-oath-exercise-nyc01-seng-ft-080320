class Follower

    attr_accessor :motto, :age
    attr_reader :name
    @@all = []

    def initialize(name, age, motto)
        @motto = motto
        @age = age
        @name = name
        @@all << self
    end 

    def bloodoaths
        Bloodoath.all.select do |pact|
            pact.follower == self
        end
    end
    
    def cults
        bloodoaths.map do |pact|
            pact.cult
        end
    end 

    def join_cult(date, cult)     ###Update to ensure self doesn't already belong
        Bloodoath.new(date, cult, self)
    end

    def self.of_a_certain_age(age)
        @@all.filter do |follower|
            follower.age >= age 
        end 
    end 


    def self.all
        @@all
    end 

end