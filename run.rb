
require 'after_do'
load 'tamagotchi.rb'
owl = Owel.new
command = 0
p 'named your owel'
owl.name = gets.chomp

# k = gets.chomp

loop do
  p 'Enter command'

  break if (command = gets.chomp) == 'exit'

  if owl.respond_to? command.to_sym
    owl.send command.to_sym
  else
    p 'unknown command, chech help'
  end
end

# p ' ^  ^'
# p '(O.O)'
# p '(/ \)'
