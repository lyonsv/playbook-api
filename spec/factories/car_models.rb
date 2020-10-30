# == Schema Information
#
# Table name: car_models
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  make_id    :bigint           not null
#
# Indexes
#
#  index_car_models_on_make_id  (make_id)
#
# Foreign Keys
#
#  fk_rails_...  (make_id => makes.id)
#
FactoryBot.define do
  sequence :model_name do |n|
    "#{FFaker::Vehicle.model}-#{n}"
  end

  factory :car_model do
    name { generate(:model_name) }
  end
end
