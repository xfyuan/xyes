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
  update_index('store#review') { self }

  belongs_to :reviewer
  belongs_to :product

  alias_attribute :title, :body
  alias_attribute :description, :body
end
