# == Schema Information
#
# Table name: makes
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  sequence :make_name do |n|
    "#{FFaker::Vehicle.make}-#{n}"
  end

  factory :make do
    name { generate(:make_name) }
  end
end
