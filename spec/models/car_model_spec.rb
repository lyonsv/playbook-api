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
require 'rails_helper'

RSpec.describe CarModel, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
