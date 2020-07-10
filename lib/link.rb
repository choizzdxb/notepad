class Link < Post
  def intitialize
    super

    @url = ""
  end

  def read_from_console
    puts "Link URL:"
    @url = STDIN.gets.chomp

    puts "Add link description:"
    @text = STDIN.gets.chomp
  end

  def to_strings
    time_string = "Created: #{@created_at.strftime("%Y.%m.%d, %H:%M:%S")} \n\r \n\r"

    [@url, @text, time_string]
  end
end
