require './waiter'

class Kitchen
  def order(dish)
    puts "KITCHEN: Order received for #{dish.name}"
    puts "I'm gonna need some:"
    dish.ingredients.each do |ingredient|
      puts "#{ingredient.amount} - #{ingredient.name}"
    end
  end

end
