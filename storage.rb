require './ingredient'
class Storage
  def initialize
    @items = [
      ingredient.new(ingredient::TOMATO, 8),
      ingredient.new(ingredient::DOUGH, 2),
      ingredient.new(ingredient::TOMATO, 8),
      ingredient.new(ingredient::TOMATO, 8)
    ]
  end

  def fetch(ingredients)
    ingredients.each do |ingredient|
      item = @items.detect{|item| item.name == ingredient.name}
      if item
        item.use ingredient.amount
      else
        return false
      end
    end
  end


end
