# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

City.create([
{ :name => "Ashkelon", :population => 115000	},
{ :name => "Ashdod", :population => 210000	},
{ :name => "Rehovot", :population => 115000	},
{ :name => "Rishon Lezion", :population => 230000	},
{ :name => "Tel Aviv", :population => 400000	},
{ :name => "Shderot", :population => 21000	},
{ :name => "Netivot", :population => 30000	},
{ :name => "Yavne", :population => 20000	},
{ :name => "Gedera", :population => 23000	}
])

Article.create([
{}
])

CityArticle.create([
{}
])