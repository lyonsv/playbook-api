# == Schema Information
#
# Table name: cars
#
#  id           :bigint           not null, primary key
#  base_color   :string
#  fuel_type    :string
#  name         :string
#  transmission :string
#  year         :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  car_model_id :bigint           not null
#
# Indexes
#
#  index_cars_on_car_model_id  (car_model_id)
#
# Foreign Keys
#
#  fk_rails_...  (car_model_id => car_models.id)
#
FactoryBot.define do
  factory :car do
    name { FFaker::Vehicle.vin }
    transmission { FFaker::Vehicle.transmission }
    fuel_type { FFaker::Vehicle.fuel_type }
    base_color { FFaker::Vehicle.base_color }
    year { FFaker::Vehicle.year }
  end
end
