# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create!(username: 'jennifer', password:'password')
s1 = Sub.create!(title: 'zoomies',description: 'animals zooming', user_id: u1.id)
s2 = Sub.create!(title: 'abc',description: 'alphabets', user_id: u1.id)
s3 = Sub.create!(title: 'animals being jerks',description: 'animals', user_id: u1.id)
p1 = Post.create!(title: 'my dog played with a cloud', sub_ids:[s1.id,s3.id], author_id: u1.id)
