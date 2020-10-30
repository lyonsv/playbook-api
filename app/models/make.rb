# == Schema Information
#
# Table name: makes
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Make < ApplicationRecord
  has_many :car_models, dependent: :destroy
end
