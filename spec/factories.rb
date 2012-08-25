FactoryGirl.define do
  factory :user do
    provider "Facebook"
    uid "12345"
    name "Ben Bernake"
    email "foo@bar.com"
    image 'http://www.facebook.com/me.jpg'
    oauth_token "df4545556454tg4545g"
    oauth_expires_at "2012-08-24 20:55:43"
  end
end
