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

FactoryBot.define do
  factory :profile do
    user { nil }
    first_name { "MyString" }
    last_name { "MyString" }
    address { "MyText" }
  end
end
