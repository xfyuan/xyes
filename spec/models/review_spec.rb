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
  let(:seller) { create :seller }
  let(:reviewer) { create :reviewer }
  let(:product) { create :product, seller: seller }
  let(:reviews) { create_list :review, 2, reviewer: reviewer, product: product }

  it 'update es indices' do
    expect { reviews.map(&:save!) }.to update_index('store#review').and_reindex(reviews)
  end
end
