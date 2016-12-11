# == Schema Information
#
# Table name: sellers
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Seller < ApplicationRecord
  has_many :products

  update_index('store#seller') { self }
end
