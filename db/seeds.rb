require "pry-rails"
makes = [{make: "Hyundai", model: "Tucson"}, {make: "Volvo", model: "XC40"}, {make: "Volkwagon", model: "Polo"}, {make: "Volkswagon", model: "Golf"}, {make: "Volvo", model: "XC60"}]

makes.each do |make|
  car_make = Make.create(name: make[:make])
  CarModel.create(name: make[:model], make_id: car_make.id)
end
