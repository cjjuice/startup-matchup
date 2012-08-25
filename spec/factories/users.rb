# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    provider "MyString"
    uid "MyString"
    name "MyString"
    email "MyString"
    oauth_token "MyString"
    oauth_expires_at "2012-08-24 20:55:43"
  end
end
