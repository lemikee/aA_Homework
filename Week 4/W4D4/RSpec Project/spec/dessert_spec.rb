require 'rspec'
require 'dessert'

describe Dessert do
  subject(:waffle) { Dessert.new("waffle", 100, chef) }
  let(:chef) { double("chef", name: "Bob") }

  describe "#initialize" do
    it "sets a type" do
      expect(waffle.type).to eq("waffle")
    end

    it "sets a quantity" do
      expect(waffle.quantity).to eq(100)
    end

    it "starts ingredients as an empty array" do
      expect(waffle.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect{ Dessert.new("crepe", 'five', chef).to raise_error(ArgumentError) }
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      waffle.add_ingredient("chocolate chips")
      expect(waffle.ingredients).to include("chocolate chips")
    end
  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      ingredients = ["flour", "eggs", "butter", "chocolate chips"]
      ingredients.each { |ingredient| waffle.add_ingredient(ingredient) }

      expect(waffle.ingredients).to eq(ingredients)
      waffle.mix!
      expect(waffle.ingredients).to_not eq(ingredients)
      expect(waffle.ingredients.sort).to eq(ingredients.sort)
    end
  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      current_quantity = waffle.quantity
      waffle.eat(10)
      expect(waffle.quantity).to eq(90)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { waffle.eat(200) }.to raise_error("not enough left!")
    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize).and_return("Chef Mike the Great Baker")
      expect(waffle.serve).to eq("Chef Mike the Terrible Baker has made 100 waffles!")
    end
  end
  
  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      expect(chef).to receive(:bake).with(waffle)
      waffle.make_more
    end
  end
end
