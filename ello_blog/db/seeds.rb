# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

erica = User.new(first_name: "E", last_name: "L", username: "ello21", email: "e@e.com", password: "password")
erica.save!

categories = ["Freshy", "Around Town","Tech Connections", "TWL"]
categories.each do |cat|
  category = Category.new(name: cat)
  category.save!
end

article1 = Article.new(:author_id => 1, category_id: 4, title: "Ruby Classes", body: "If you're a fledging Ruby programmer, by now I'm sure you've heard the word Class thrown around a bit. I'll give you an intro today, and to sweeten the deal, I'll do it with pie! My favorite pie is Sweet Potato pie!! In my neighborhood, there are a few ladies who are FAMOUS for theirs, and around Thanksgiving people line up to put in orders. But everyone likes their pie a little differently. Some people use cinnamon, others nutmeg. Some people boil their sweet potatoes, and others roast them. SO, let's say you're Miss Johnson and you've got 100 pies to make. You have your secret recipe, but some of your customers may want a few additions of their own...", num_likes: nil, header_img_path: nil)
article1.save!

article2 = Article.new(:author_id => 1, category_id: 3, title: "Tech Diversity - Analyzing the Divide", body: "The tech industry has delivered to the world some of its most innovative, out-of-the-box ideas and contributions. It’s known for being an environment where you can soar based on your ability rather than who you know or what you look like, and 20-something CEOs create company cultures that include gaming consoles at work and flip flops any day of the week… a slap in the face to the traditional corporate culture that the majority of Americans are accustomed to. But for all of the forward-thinking progress you can find in the industry, one area where it is stagnant is in the diversity of its workers. When it comes to sex, race, and age, the tech industry’s numbers are consistent: male, white, and young. If you follow any tech news outlets or forums you can’t go more than a week without hearing that phrase “diversity in tech”. Yet despite it being much talked about, the numbers have not increased significantly...", num_likes: nil, header_img_path: nil)
article2.save!


