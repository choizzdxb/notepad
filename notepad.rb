require_relative 'lib/post'
require_relative 'lib/link'
require_relative 'lib/task'
require_relative 'lib/memo'

puts "Hey, I'm your notepad!"
puts "What would you like to add?"

choices = Post.post_types

choice = -1

until choice >= 0 && choice <= choices.size

  choices.each_with_index do |type, index|
    puts "\t #{index}. #{type}"
  end

  choice = STDIN.gets.chomp.to_i
end

entry = Post.create(choice)

entry.read_from_console

entry.save

puts "Saved successfully!"
