# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@user = User.create(
                    email: "test@test.com",
                    password: "asdfasdf",
                    password_confirmation: "asdfasdf",
                    first_name: "Jon", 
                    last_name: "Snow",
                    phone: '6263863960'
                   )

puts "1 User created"

AdminUser.create(
                 email: "admin@test.com",
                 password: "asdfasdf",
                 password_confirmation: "asdfasdf", 
                 first_name: "Admin", 
                 last_name: "Name",
                 phone: '6263863960'
                )

puts "1 Admin User created"

100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} Hodor. Hodor hodor, hodor. Hodor hodor hodor hodor hodor. Hodor. Hodor! Hodor hodor, hodor; hodor 
  hodor hodor. Hodor. Hodor hodor; hodor hodor - hodor, hodor, hodor hodor. Hodor, hodor. Hodor. Hodor, hodor hodor hodor; hodor hodor; hodor hodor 
  hodor! Hodor hodor HODOR! Hodor hodor... Hodor hodor hodor...", user_id: @user.id, overtime_request: 2.5)
end

puts "100 posts created"

100.times do |audit_log|
  AuditLog.create!(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
end

puts "100 audit logs created"
