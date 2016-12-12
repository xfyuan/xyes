# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  seller_id   :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Product < ApplicationRecord
  update_index('store#product') { self }
  update_index('store#seller') { seller }

  belongs_to :seller
  has_many :reviews

  alias_attribute :title, :name
end
