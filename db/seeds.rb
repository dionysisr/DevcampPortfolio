# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

blogs = 10
blogs.times do |n|
	Blog.create!(
		title: "My blog #{n}",
		body: "#{n} steps exponentially lead to #{n * n}."
		)
end
puts  "#{blogs} blogs created"

skills = 5
skills.times do |n|
	Skill.create!(
		title: "Ruby #{n}",
		percent_spent: 20
		)
end
puts  "#{skills} skills created"

portfolios = 9
portfolios.times do |n|
	Portfolio.create!(
		title: "Portfolio Item #{n}",
		subtitle: "My fantastic service #{n}",
        body: "#{n}. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
        main_image: "https://via.placeholder.com/350x200?text=PHILOKRATOS #{n}",
        thumb_image: "https://via.placeholder.com/600x400/0000FF/808080 ?Text=Digital.com"
		)
end
puts  "#{portfolios} portfolio items created"
