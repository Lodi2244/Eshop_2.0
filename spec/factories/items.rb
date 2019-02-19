# frozen_string_literal: true
# == Schema Information
#
# Table name: items
#
#  id          :bigint(8)        not null, primary key
#  title       :string
#  description :text
#  price       :float            not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint(8)
#  address     :string
#  city        :string
#  image_url   :string
#

FactoryBot.define do
  factory :item do
    title       { Faker::Name.first_name }
    description { Faker::Lorem.paragraph }
    price       { Faker::Number.decimal(2) }
  end
end
