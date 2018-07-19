# Ruby example application

class Greeter
  attr_accessor :names

  def initialize(names = "World")
    @names = names
  end

  def say_hi
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hello #{@names}!"
    end
  end

  def say_bye
    if @names.nil?
      puts "..."
    elsif @names.respond_to?("each")
      puts "Goodbye #{@names.join(", ")}. Come back soon!"
    else
      puts "Bye, #{@names}, come back soon!"
    end
  end
end


if __FILE__ == $0
  greeter = Greeter.new

  # No params, default settings
  greeter.say_hi
  greeter.say_bye

  # Set name to "John"
  greeter.names = "John"
  greeter.say_hi
  greeter.say_bye

  # Give it an array of names
  greeter.names = ["Anna", "Bob", "Chris", "Dave"]
  greeter.say_hi
  greeter.say_bye

  # Set names to nil
  greeter.names = nil
  greeter.say_hi
  greeter.say_bye
end
