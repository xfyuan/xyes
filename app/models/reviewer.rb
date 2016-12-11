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

class Reviewer < ApplicationRecord
  has_many :reviews
end
