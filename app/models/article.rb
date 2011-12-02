class Article < ActiveRecord::Base

has_many :city_articles
has_many :cities, :through => :city_articles

accepts_nested_attributes_for :city_articles, :reject_if => lambda { |a| a[:city_id].blank? }

end
