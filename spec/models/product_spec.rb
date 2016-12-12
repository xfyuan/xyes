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

require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:seller) { create :seller }
  let(:products) { create_list :product, 2, seller: seller }

  it 'update es indices' do
    expect { products.map(&:save!) }.to update_index('store#product').and_reindex(products)
  end
end
