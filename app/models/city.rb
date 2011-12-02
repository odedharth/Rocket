class City < ActiveRecord::Base

has_many :city_articles
has_many :articles, :through => :city_articles

end
