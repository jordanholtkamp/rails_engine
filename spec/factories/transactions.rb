FactoryBot.define do
  factory :transaction do
    invoice { nil }
    credit_card_number { "MyString" }
    credit_card_expiration_date { "2020-01-27 17:03:06" }
    result { 1 }
  end
end
