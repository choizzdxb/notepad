require 'date'

class Task < Post
  def initialize
    super

    @due_date = Time.now
  end

  def read_from_console
    puts "Write 'to do' list here:"
    @text = STDIN.gets.chomp

    puts "What is the deadline for this task?. Use dd.mm.yyyy format (ex. 12.05.2020)"
    input = STDIN.gets.chomp

    @due_date = Date.parse(input)
  end

  def to_strings
    time_string = "Created: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"

    deadline = "Deadline: #{@due_date}"

    [deadline, @text, time_string]
  end
end
