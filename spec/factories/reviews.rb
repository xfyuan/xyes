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

FactoryGirl.define do
  factory :review do
    body "MyString"
    reviewer nil
    product nil
  end
end
