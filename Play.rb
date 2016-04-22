require_relative 'karta'
require_relative 'koloda'
require_relative 'player'
require_relative 'game'

name = gets.chomp
count = gets.to_i

game = Game.new count, name

game.play