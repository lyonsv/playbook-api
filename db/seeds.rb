require "factory_bot"
include FactoryBot::Syntax::Methods

makes = 5.times.map do
  create(:make)
end

makes.each do |make|
  models = 5.times.map do
    create(:car_model, make: make)
  end
  models.each do |model|
    5.times do
      create(:car, car_model: model)
    end
  end
end

