# frozen_string_literal: true

FactoryBot.define do
  factory :order do
    total_price { 1.5 }
    status { "MyString" }
    users { nil }
  end
end
