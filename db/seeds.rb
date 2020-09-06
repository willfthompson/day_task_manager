# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "----------------------------------"
puts " Creating Users"
puts "----------------------------------"

user = User.new
user.email = "will.f.thompson@gmail.com"
user.password = 'password'
user.password_confirmation = 'password'
user.save!

puts "----------------------------------"
puts " Created #{User.count} Users"
puts "----------------------------------"

puts "----------------------------------"
puts " Creating Tasks"
puts "----------------------------------"


5.times do
  task = Task.new
  task.name = "Here's a task"
  task.user = User.last
  task.status = false
  task.save!
end

puts "----------------------------------"
puts " Created #{Task.count} Tasks"
puts "----------------------------------"

puts "----------------------------------"
puts " Creating Tasks"
puts "----------------------------------"

note = Note.new
note.content = "Here's some content"
note.user = User.last
note.save!


puts "----------------------------------"
puts " Created #{Note.count} Notes"
puts "----------------------------------"
