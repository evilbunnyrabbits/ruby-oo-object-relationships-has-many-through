require 'pry'
require 'meal.rb'


class Customer
  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def new_meal(waiter, total, tip)
    Meal.new(waiter, self, total, tip)
  end

  def meals
    Meal.all.select do |meal|
      meal.customer == self
    end
  end

  def waiters
    meals.map do |meal|
      meal.waiter
    end
  end

  def name
    @name
  end

  def age
    @age
  end

  def self.all
    @@all
  end

end
