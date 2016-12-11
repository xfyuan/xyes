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
  update_index('store#seller') { self }

  has_many :products

  alias_attribute :title, :name
end
