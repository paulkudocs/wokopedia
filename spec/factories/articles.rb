FactoryBot.define do
  factory :article do
    title { "MyString" }
    body { "MyText" }
    img_url { "MyString" }
    user { nil }
  end
end
