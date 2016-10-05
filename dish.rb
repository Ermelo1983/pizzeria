class Dish
  def initialize(dish_name, ingredients)
    @name = dish_name
    @ingredients = ingredients
  end

  def name
    @name
  end

  def list_menu
    @menu.contents.each do |recipe|
      puts "#{recipe.name}"
    end
  end

  def ingredients
    @ingredients
  end



end
