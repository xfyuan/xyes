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

FactoryGirl.define do
  factory :seller do
    name "My String"
    description "My String"
  end
end
