class Dish
  def initialize(dish_name)
    @name = dish_name
  end

  def name
    @name
  end

  def list_menu
    @menu.contents.each do |recipe|
      puts "#{recipe.name}"
    end
  end


end
