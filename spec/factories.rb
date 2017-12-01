FactoryBot.define do
  factory :product do
    title 'Sherlock Holes Consulting Detective'
    price 34
    description 'Ten Sherlock Holmes adventures in which you are the hero! You are a member of the Baker Street Irregulars working to solve mysteries before the Master! You are either investigating the mysteries as an individual, or trying to win against up to 8 other investigators.'
    players '1-8'
    playtime '60-120 minutes'
    publisher 'Asmodee Editions'
  end

  factory :user do
    username 'admin'
    email 'admin@admin.com'
    password '123456'
    admin true
  end
end
