# == Schema Information
#
# Table name: reviews
#
#  id          :integer          not null, primary key
#  body        :string
#  reviewer_id :integer
#  product_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Review, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
