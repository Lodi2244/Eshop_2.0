# frozen_string_literal: true

# == Schema Information
#
# Table name: orders
#
#  id         :bigint(8)        not null, primary key
#  total      :decimal(, )      not null
#  status     :integer          default(0)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint(8)
#

FactoryBot.define do
  factory :order do
    total_price { 1.5 }
    status { "MyString" }
    users { nil }
  end
end
