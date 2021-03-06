# == Schema Information
#
# Table name: reviewers
#
#  id         :integer          not null, primary key
#  name       :string
#  bio        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Reviewer, type: :model do
  let(:reviewers) { create_list :reviewer, 2 }

  it 'update es indices' do
    expect { reviewers.map(&:save!) }.to update_index('store#reviewer').and_reindex(reviewers)
  end

  it 'update es indices by name' do
    reviewer = reviewers.first
    expect { reviewer.update_attributes!(name: 'Tom') }.to update_index('store#reviewer').and_reindex(reviewer, with: { name: 'Tom' })
  end
end
