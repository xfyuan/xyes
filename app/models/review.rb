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

class Review < ApplicationRecord
  belongs_to :reviewer
  belongs_to :product
end
