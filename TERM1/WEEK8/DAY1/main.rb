require "colorize"
require "tty-prompt"
require "tty-progressbar"

prompt = TTY::Prompt.new
bar = TTY::ProgressBar.new("LOADING [:bar]", total: 30)

prompt.select("Choose your destiny?", %w(Scorpion Kano Jax))

30.times do
    sleep(0.1)
    bar.advance  # by default increases by 1
  end

puts "I am trying out Ruby Gems!".blue.on_black
puts "Colorize is fun!".green.on_blue
puts "What should I try next?".red.on_white