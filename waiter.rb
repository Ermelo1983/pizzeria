class Waiter
  def greet_guest
    puts "Hello, welcome to our pizzeria. Can i help you?"
  end

  def serve_guest
    puts "How can I be of service?"
    puts "1. Would you like to order a pizza?"
    puts "2. Would you like to leave?"
    @choice = gets.chomp.to_i
    take_order(@choice)
  end

  def take_order(order_number)
    case @choice
    when 1
      puts "Let me get the menu."
      list_menu
    when 2
      puts "Thank you for your visit."
    else
      puts "I really don't understand."
    end
  end

  def initialize(menu)
    @menu =menu
  end

  def list_menu
    @menu.contents.each do |dish|
      puts "#{dish.name}"
    end
  end
end
