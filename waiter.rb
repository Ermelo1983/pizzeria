require './kitchen'

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
      order_food(gets.chomp.to_i)
    when 2
      puts "Thank you for your visit."
    else
      puts "I really don't understand."
    end
  end

  def initialize(menu, kitchen)
    @menu = menu
    @kitchen = kitchen
  end

  def list_menu
    @menu.contents.each_with_index do |dish, index|
      puts "#{index + 1}. #{dish.name}"
    end
  end

  def order_food(choice)
    dish = @menu.contents[ choice ]
    @kitchen.order(dish)
  end
end
