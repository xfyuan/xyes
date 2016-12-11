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

FactoryGirl.define do
  factory :reviewer do
    name "MyString"
    bio "MyString"
  end
end
