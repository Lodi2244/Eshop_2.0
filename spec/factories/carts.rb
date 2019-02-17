# frozen_string_literal: true

FactoryBot.define do
  factory :cart do
    quantity { 1 }
    user { nil }
    item { nil }
  end
end
