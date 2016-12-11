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
  update_index('store#reviewer') { self }

  has_many :reviews

  alias_attribute :title, :name
  alias_attribute :description, :bio
end
