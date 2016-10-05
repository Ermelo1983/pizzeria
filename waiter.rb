class Waiter
  def greet
    puts "Hello, welcome to our pizzeria. Can i help you?"
  end

  def serve_guest
    puts "How can I be of service?"
    puts "1. Would you like to order a pizza?"
    puts "2. Would you like to leave?"

    choice = gets.chomp.to_i
  end

  def take_order(order_number)
    take_order(gets.chomp.to_i)

    case order_number
    when 1
      puts "Let me get the menu."
    when 2
      puts "Thank you for your visit."
    else
      puts "I really don't understand."
    end

  end
end
