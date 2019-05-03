# frozen_string_literal: true

# == Schema Information
#
# Table name: profiles
#
#  id         :bigint(8)        not null, primary key
#  user_id    :bigint(8)
#  first_name :string
#  last_name  :string
#  address    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Profile < ApplicationRecord
  validates :first_name, presence: true, on: :update
  validates :last_name, presence: true, on: :update
  validates :address, presence: true, on: :update

  belongs_to :user
end
