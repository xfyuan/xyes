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

require 'rails_helper'

RSpec.describe Seller, type: :model do
  let(:sellers) { create_list :seller, 2 }

  it 'update es indices' do
    expect { sellers.map(&:save!) }.to update_index('store#seller').and_reindex(sellers)
  end
end
