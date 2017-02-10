
require 'after_do'
load 'tamagotchi.rb'
owl = Owel.new
command = 0
p 'named your owel'
owl.name = gets.chomp

p 'Enter command'
k = gets.chomp
owl.send k.to_sym

# while command != "exit"
#   command = gets.chomp

# end


# p ' ^  ^'
# p '(O.O)'
# p '(/ \)'




