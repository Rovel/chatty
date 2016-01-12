# create default test user

if Rails.env.development? || Rails.env.staging?
  20.times do |n|
    User.create!(name: "R2D#{n}", email: "chattybot+#{n}@example.com", password: "12345", password_confirmation: "12345")
  end
end
