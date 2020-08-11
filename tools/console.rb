require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

scientology = Cult.new("Scientology", "Los Angeles", 1965, "Give us money")
satanism = Cult.new("Satanism", "Miami", 1779, "Lucifer is my boy")
ray = Cult.new("Ray", "Miami", 1996, "I'm awesome")

tim = Follower.new("Tim", 23, "Is it a crime to rage?")
matt = Follower.new("Matt", 22, "I like ear")
rob = Follower.new("Rob", 32, "Tacos")

tim_satanism = Bloodoath.new("2009_05_02", satanism, tim)
matt_scientology = Bloodoath.new("2015_02_08", scientology, matt)
rob_satanism = Bloodoath.new("2018_04_23", satanism, rob)

binding.pry

puts "Mwahahaha!" # just in case pry is buggy and exits