# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


List.create({title: "Portland"})

Job.create({company:"Nike", position:"Software Engineer 1",
  location:"Beaverton, OR", link:"https://www.linkedin.com/jobs/view/software-engineer-i-at-nike-1510852702/",
  contacts:"zoe@swoosh.com", notes:"Looks like an awesome position", next_steps:"Send follow up email to Zoe", applied: true, list_id: 1
  })