namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin = User.create!(name: "Test User",
                 email: "test@test.com",
                 password: "password",
                 password_confirmation: "password")
    admin.toggle!(:admin)
  end
end